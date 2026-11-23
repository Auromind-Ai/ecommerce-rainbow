<?php

namespace Theme\Ninico\Http\Controllers;

use Botble\Base\Events\AdminNotificationEvent;
use Botble\Base\Facades\BaseHelper;
use Botble\Base\Http\Responses\BaseHttpResponse;
use Botble\Base\Supports\AdminNotificationItem;
use Botble\Ecommerce\Enums\OrderHistoryActionEnum;
use Botble\Ecommerce\Enums\OrderStatusEnum;
use Botble\Ecommerce\Facades\Cart;
use Botble\Ecommerce\Facades\EcommerceHelper;
use Botble\Ecommerce\Models\Order;
use Botble\Ecommerce\Models\OrderAddress;
use Botble\Ecommerce\Models\OrderHistory;
use Botble\Ecommerce\Models\OrderProduct;
use Botble\Ecommerce\Models\Product;
use Botble\Ecommerce\Services\Products\GetProductBySlugService;
use Botble\Ecommerce\Services\Products\GetProductService;
use Botble\Ecommerce\Services\Products\GetProductWithCrossSalesBySlugService;
use Botble\Ecommerce\Services\Products\ProductCrossSalePriceService;
use Botble\Payment\Enums\PaymentMethodEnum;
use Botble\Payment\Enums\PaymentStatusEnum;
use Botble\Payment\Models\Payment;
use Botble\Theme\Facades\Theme;
use Botble\Theme\Http\Controllers\PublicController;
use Illuminate\Http\Request;
use Illuminate\Support\Arr;
use Illuminate\Support\Collection;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Str;
use Throwable;

class NinicoController extends PublicController
{
    public function __construct(protected BaseHttpResponse $response)
    {
        $this->middleware(function ($request, $next) {
            if (! $request->ajax()) {
                return $this->response->setNextUrl(BaseHelper::getHomepageUrl());
            }

            return $next($request);
        })->only([
            'ajaxProductShop',
            'ajaxProductView',
            'ajaxAddToWishlist',
            'ajaxCart',
            'ajaxGetProducts',
            'ajaxSearchProducts',
            'ajaxSubmitCustomOrder',
        ]);
    }

    public function ajaxGetProducts(Request $request): BaseHttpResponse
    {
        $limit = $request->integer('limit', 10) ?: 10;

        $params = [
            'take' => $limit,
        ];

        $products = match ($request->query('type')) {
            'featured' => get_featured_products($params),
            'on-sale' => get_products_on_sale($params),
            'trending' => get_trending_products($params),
            'top-rated' => EcommerceHelper::isReviewEnabled() ? get_top_rated_products($limit) : collect(),
            default => get_products($params + EcommerceHelper::withReviewsParams()),
        };

        if (! $products instanceof Collection) {
            $products = collect([$products]);
        }

        $currentLayout = 'grid';

        $data = view(Theme::getThemeNamespace('views.ecommerce.includes.product-items'), compact('products', 'currentLayout'))->render();

        return $this->response->setData($data);
    }

    public function ajaxCart(): BaseHttpResponse
    {
        return $this->response->setData([
            'count' => Cart::instance('cart')->count(),
            'html' => view(Theme::getThemeNamespace('views.ecommerce.includes.mini-cart'))->render(),
        ]);
    }

    /**
     * @deprecated Please view `ajaxProductView` method.
     */
    public function ajaxGetQuickView(string $id): BaseHttpResponse
    {
        $product = get_products(
            [
                'condition' => [
                    'ec_products.id' => $id,
                ],
                'take' => 1,
                'with' => [
                    'slugable',
                    'tags',
                    'tags.slugable',
                    'options',
                    'options.values',
                ],
            ] + EcommerceHelper::withReviewsParams()
        );

        if (! $product) {
            return $this->response
                ->setError()
                ->setMessage(__('This product is not available.'));
        }

        [$productImages, $productVariation, $selectedAttrs] = EcommerceHelper::getProductVariationInfo($product);

        return $this
            ->response
            ->setData(
                view(
                    Theme::getThemeNamespace('views.ecommerce.quick-view'),
                    compact('product', 'productImages', 'productVariation', 'selectedAttrs')
                )->render()
            );
    }

    /**
     * @deprecated Please view `ajaxProductShop` method.
     */
    public function ajaxQuickShop(string $id): BaseHttpResponse
    {
        $product = get_products(
            [
                'condition' => [
                    'ec_products.id' => $id,
                ],
                'take' => 1,
                'with' => [
                    'slugable',
                    'tags',
                    'tags.slugable',
                    'options',
                    'options.values',
                ],
            ] + EcommerceHelper::withReviewsParams()
        );

        if (! $product) {
            return $this->response
                ->setError()
                ->setMessage(__('This product is not available.'));
        }

        [$productImages, $productVariation, $selectedAttrs] = EcommerceHelper::getProductVariationInfo($product);

        return $this
            ->response
            ->setData(
                view(
                    Theme::getThemeNamespace('views.ecommerce.quick-shop'),
                    compact('product', 'productImages', 'productVariation', 'selectedAttrs')
                )->render()
            );
    }

    public function ajaxProductShop(
        GetProductBySlugService $getProductBySlugService,
        GetProductWithCrossSalesBySlugService $getProductWithCrossSalesBySlugService,
        Request $request,
        string $slug
    ) {
        $request->validate([
            'reference_product' => ['sometimes', 'required', 'string'],
        ]);

        $product = $getProductBySlugService->handle($slug, [
            'with' => [
                'slugable',
                'tags',
                'tags.slugable',
                'options',
                'options.values',
            ],
        ]);

        abort_unless($product, 404);

        $referenceProduct = null;

        if (
            $request->filled('reference_product')
            && $referenceProduct = $getProductWithCrossSalesBySlugService->handle(
                $request->input('reference_product')
            )
        ) {
            app(ProductCrossSalePriceService::class)->applyProduct($referenceProduct);
        }

        [$productImages, $productVariation, $selectedAttrs] = EcommerceHelper::getProductVariationInfo($product);

        return $this
            ->response
            ->setData(
                view(
                    Theme::getThemeNamespace('views.ecommerce.quick-shop'),
                    compact('product', 'productImages', 'productVariation', 'selectedAttrs', 'referenceProduct')
                )->render()
            );
    }

    public function ajaxSearchProducts(
        Request $request,
        GetProductService $productService
    ) {
        $request->merge(['num' => 12]);

        $products = $productService->getProduct($request);

        $queries = $request->input();

        foreach ($queries as $key => $query) {
            if (! $query || $key === 'num' || (is_array($query) && ! Arr::get($query, 0))) {
                unset($queries[$key]);
            }
        }

        $total = $products->count();
        $message = $total !== 1 ? __(':total Products found', compact('total')) : __(
            ':total Product found',
            compact('total')
        );

        return $this
            ->response
            ->setData(
                view(
                    Theme::getThemeNamespace('views.ecommerce.includes.ajax-search-results'),
                    compact('products', 'queries')
                )->render()
            )
            ->setMessage($message);
    }

    public function ajaxSubmitCustomOrder(Request $request): BaseHttpResponse
    {
        $request->validate([
            'id' => 'required|exists:ec_products,id',
            'customer_name' => 'required|string|max:120',
            'customer_phone' => 'required|string|min:6|max:30',
            'customer_email' => 'nullable|email|max:120',
            'customer_notes' => 'nullable|string|max:1000',
            'custom_photo' => 'nullable|file|image|max:15360',
        ]);

        $product = Product::query()->find($request->input('id'));

        if (! $product) {
            return $this->response
                ->setError()
                ->setMessage(__('Product not found or unavailable.'));
        }

        $photoUrl = null;
        $photoRelative = null;

        if ($request->hasFile('custom_photo')) {
            $file = $request->file('custom_photo');
            $uploadDir = public_path('storage/custom-orders');
            if (! File::isDirectory($uploadDir)) {
                File::makeDirectory($uploadDir, 0755, true, true);
            }

            $extension = $file->getClientOriginalExtension() ?: 'jpg';
            $fileName = 'custom-statue-' . Str::random(10) . '-' . time() . '.' . $extension;
            $file->move($uploadDir, $fileName);

            $photoRelative = 'storage/custom-orders/' . $fileName;
            $photoUrl = asset($photoRelative);
        }

        $name = trim($request->input('customer_name'));
        $phone = trim($request->input('customer_phone'));
        $email = trim($request->input('customer_email') ?: '');
        $notes = trim($request->input('customer_notes') ?: '');
        $qty = max(1, (int) $request->input('qty', 1));

        $token = md5(Str::random(40) . time());

        $order = Order::query()->create([
            'user_id' => auth('customer')->id() ?: 0,
            'status' => OrderStatusEnum::PENDING,
            'amount' => $product->front_sale_price_with_taxes ?: 0,
            'tax_amount' => 0,
            'shipping_amount' => 0,
            'sub_total' => $product->front_sale_price_with_taxes ?: 0,
            'discount_amount' => 0,
            'shipping_method' => 'default',
            'shipping_option' => 'default',
            'coupon_code' => null,
            'is_confirmed' => true,
            'is_finished' => true,
            'token' => $token,
            'proof_file' => $photoRelative,
            'description' => "🌟 Custom Statue Inquiry (Pricing to be decided on call)\nCustomer Name: {$name}\nPhone: {$phone}" .
                ($email ? "\nEmail: {$email}" : "") .
                ($photoUrl ? "\nPhoto: {$photoUrl}" : "") .
                ($notes ? "\nNotes: {$notes}" : "") .
                "\n*Action: Admin to call customer, confirm dimensions/finish, and agree on pricing.",
        ]);

        $order->code = get_order_code($order->id);

        if (is_plugin_active('payment')) {
            $currencyTitle = is_callable('cms_currency') && cms_currency()->getDefaultCurrency()
                ? cms_currency()->getDefaultCurrency()->title
                : 'INR';

            $payment = Payment::query()->create([
                'amount' => $order->amount,
                'currency' => $currencyTitle,
                'payment_channel' => PaymentMethodEnum::COD,
                'status' => PaymentStatusEnum::PENDING,
                'payment_type' => 'confirm',
                'order_id' => $order->id,
                'charge_id' => Str::upper(Str::random(10)),
                'user_id' => 0,
                'customer_id' => auth('customer')->id() ?: 0,
                'customer_type' => auth('customer')->check() ? \Botble\Ecommerce\Models\Customer::class : null,
            ]);

            $order->payment_id = $payment->id;
        }

        $order->save();

        OrderAddress::query()->create([
            'order_id' => $order->id,
            'name' => $name,
            'phone' => $phone,
            'email' => $email ?: ('inquiry-' . $order->id . '@rainbowstatue.com'),
            'country' => 'IN',
            'state' => 'Tamil Nadu',
            'city' => 'Direct Consultation',
            'address' => 'Custom Statue Request - Phone Consultation',
        ]);

        $extras = [
            ['key' => 'Customer Phone', 'value' => $phone],
            ['key' => 'Pricing Status', 'value' => 'Admin calls to decide pricing'],
        ];

        if ($photoUrl) {
            $extras[] = ['key' => 'Uploaded Photo', 'value' => $photoUrl];
        }

        if ($notes) {
            $extras[] = ['key' => 'Customer Note', 'value' => $notes];
        }

        OrderProduct::query()->create([
            'order_id' => $order->id,
            'product_id' => $product->id,
            'product_name' => $product->name,
            'product_image' => $product->image,
            'qty' => $qty,
            'price' => $product->front_sale_price_with_taxes ?: 0,
            'tax_amount' => 0,
            'options' => [
                'extras' => $extras,
            ],
        ]);

        OrderHistory::query()->create([
            'order_id' => $order->id,
            'action' => OrderHistoryActionEnum::CREATE_ORDER_FROM_PAYMENT_PAGE,
            'description' => "Custom statue order request submitted directly from product page. Customer Phone: {$phone}.",
        ]);

        try {
            event(new AdminNotificationEvent(
                AdminNotificationItem::make()
                    ->title(__('New Custom Statue Request'))
                    ->description(__('Customer :name (:phone) requested a quote for :product', [
                        'name' => $name,
                        'phone' => $phone,
                        'product' => $product->name,
                    ]))
                    ->action(__('View Order'), route('orders.edit', $order->id))
            ));
        } catch (Throwable $e) {
            Log::warning('AdminNotificationEvent error: ' . $e->getMessage());
        }

        $this->notifyAdminCustomOrder($order, [
            'product_name' => $product->name,
            'name' => $name,
            'phone' => $phone,
            'email' => $email,
            'notes' => $notes,
            'photo_url' => $photoUrl,
        ]);

        return $this->response
            ->setMessage(__('Thank you! Your custom statue request has been received. Our team will contact you shortly to confirm details and finalize pricing.'))
            ->setData([
                'order_id' => $order->id,
                'order_code' => $order->code,
                'customer_name' => $name,
                'customer_phone' => $phone,
                'photo_url' => $photoUrl,
            ]);
    }

    protected function notifyAdminCustomOrder(Order $order, array $data): void
    {
        try {
            $adminEmail = setting('admin_email')
                ?: get_ecommerce_setting('admin_email')
                ?: \Botble\ACL\Models\User::first()?->email
                ?: config('mail.from.address');

            if (! $adminEmail) {
                return;
            }

            $subject = '🌟 [New Custom Statue Request] ' . $order->code . ' - ' . ($data['product_name'] ?? 'Product');
            $adminOrderUrl = route('orders.edit', $order->id);

            $html = "
            <div style='font-family: Arial, sans-serif; max-width: 600px; margin: 0 auto; padding: 20px; border: 1px solid #e2e8f0; border-radius: 12px; background: #ffffff;'>
                <h2 style='color: #2073BF; margin-top: 0;'>New Custom Statue Order Request</h2>
                <p style='color: #475569; font-size: 15px;'>A customer has submitted their photo and requested a callback to decide on dimensions and pricing.</p>
                <div style='background: #f8fafc; border-radius: 8px; padding: 15px; margin: 20px 0;'>
                    <p style='margin: 6px 0;'><strong>Order Reference:</strong> {$order->code}</p>
                    <p style='margin: 6px 0;'><strong>Product:</strong> " . e($data['product_name']) . "</p>
                    <p style='margin: 6px 0;'><strong>Customer Name:</strong> " . e($data['name']) . "</p>
                    <p style='margin: 6px 0;'><strong>Phone Number:</strong> <a href='tel:" . e($data['phone']) . "' style='color: #16a34a; font-weight: bold; font-size: 16px;'>" . e($data['phone']) . "</a></p>
                    " . (!empty($data['email']) ? "<p style='margin: 6px 0;'><strong>Email:</strong> " . e($data['email']) . "</p>" : "") . "
                    " . (!empty($data['notes']) ? "<p style='margin: 6px 0;'><strong>Special Notes:</strong> " . nl2br(e($data['notes'])) . "</p>" : "") . "
                </div>
                " . (!empty($data['photo_url']) ? "
                <div style='margin: 20px 0;'>
                    <p style='margin-bottom: 8px;'><strong>Uploaded Customer Photo:</strong></p>
                    <a href='" . e($data['photo_url']) . "' target='_blank'>
                        <img src='" . e($data['photo_url']) . "' alt='Customer Photo' style='max-width: 100%; max-height: 350px; border-radius: 8px; border: 1px solid #cbd5e1; display: block;'>
                    </a>
                    <p style='font-size: 12px; color: #64748b; margin-top: 4px;'><a href='" . e($data['photo_url']) . "' target='_blank'>Click to view / download full resolution photo</a></p>
                </div>" : "") . "
                <div style='margin-top: 25px;'>
                    <a href='{$adminOrderUrl}' style='display: inline-block; background: #2073BF; color: #ffffff; padding: 12px 24px; text-decoration: none; border-radius: 8px; font-weight: bold;'>
                        Open Order in Admin Panel →
                    </a>
                </div>
            </div>
            ";

            Mail::html($html, function ($msg) use ($adminEmail, $subject) {
                $msg->to($adminEmail)->subject($subject);
            });
        } catch (Throwable $e) {
            Log::warning('Could not send admin notification email: ' . $e->getMessage());
        }
    }
}
