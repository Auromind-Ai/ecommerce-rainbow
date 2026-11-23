@extends('plugins/ecommerce::orders.master')

@section('title', __('Checkout'))

@push('header')
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:ital,wght@0,400;0,500;0,600;0,700;0,800;1,700;1,800&display=swap" rel="stylesheet">
    @php
        $elegantCssPath = public_path('themes/ninico/css/elegant.css');
        $elegantCssVer = file_exists($elegantCssPath) ? filemtime($elegantCssPath) : '1.0';
    @endphp
    <link rel="stylesheet" href="{{ asset('themes/ninico/css/elegant.css') }}?v={{ $elegantCssVer }}">
@endpush

@section('content')
    @if (Cart::instance('cart')->isNotEmpty())
        @if (is_plugin_active('payment') && $orderAmount)
            @include('plugins/payment::partials.header')
        @endif

        <div class="tse-checkout-wrapper">
            {{-- Top Sticky Header --}}
            <header class="tse-checkout-top-header">
                <div class="tse-header-inner">
                    <div class="tse-header-left">
                        <a href="{{ route('public.cart') }}" class="tse-header-back-btn" aria-label="{{ __('Back to Cart') }}">
                            <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="#0F172A" stroke-width="2.3" stroke-linecap="round" stroke-linejoin="round">
                                <line x1="19" y1="12" x2="5" y2="12"></line>
                                <polyline points="12 19 5 12 12 5"></polyline>
                            </svg>
                        </a>
                        <a href="{{ BaseHelper::getHomepageUrl() }}" class="tse-header-logo-link">
                            @php
                                $logo = theme_option('logo_in_the_checkout_page') ?: theme_option('logo');
                            @endphp
                            @if ($logo)
                                <img src="{{ RvMedia::getImageUrl($logo) }}" alt="{{ theme_option('site_title') }}" class="tse-header-logo-img">
                            @else
                                <span class="tse-header-logo-text">Rainbow Statue Gallery</span>
                            @endif
                        </a>
                        <div class="tse-header-divider"></div>
                        <h1 class="tse-header-title">{{ __('Checkout') }}</h1>
                    </div>
                    <div class="tse-header-right">
                        <div class="tse-secure-badge">
                            <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="#16A34A" stroke-width="2.2" stroke-linecap="round" stroke-linejoin="round" class="tse-shield-icon">
                                <path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10z"/>
                                <path d="m9 12 2 2 4-4"/>
                            </svg>
                            <div class="tse-secure-lines">
                                <span>{{ __('Secure') }}</span>
                                <span>{{ __('Checkout') }}</span>
                            </div>
                        </div>
                    </div>
                </div>
            </header>

            {{-- Main Checkout Form --}}
            <x-core::form :url="route('public.checkout.process', $token)" id="checkout-form" class="checkout-form payment-checkout-form tse-checkout-main-form">
                <input id="checkout-token" name="checkout-token" type="hidden" value="{{ $token }}">
                <input id="save-shipping-information-url" type="hidden" value="{{ route('public.checkout.save-information', $token) }}">
                <input name="amount" type="hidden" value="{{ format_price($orderAmount, null, true) }}">
                <input name="currency" type="hidden" value="{{ strtoupper(get_application_currency()->title) }}">
                <input name="shipping_option" type="hidden" value="{{ BaseHelper::stringify(old('shipping_option', $defaultShippingOption)) }}">
                <input name="shipping_method" type="hidden" value="{{ old('shipping_method', $defaultShippingMethod) }}">

                <div class="tse-checkout-container" id="main-checkout-product-info">
                    <div class="payment-info-loading" style="display: none;">
                        <div class="payment-info-loading-content">
                            <i class="fas fa-spinner fa-spin"></i>
                        </div>
                    </div>

                    {{-- CARD 1: Your Order (with Blue Shopping Cart Icon) --}}
                    <div class="tse-card tse-card-order">
                        <div class="tse-card-header">
                            <div class="tse-card-header-left">
                                <div class="tse-card-icon tse-icon-cart">
                                    <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="#2563EB" stroke-width="2.2" stroke-linecap="round" stroke-linejoin="round">
                                        <circle cx="9" cy="20" r="1.5"/>
                                        <circle cx="18" cy="20" r="1.5"/>
                                        <path d="M1 1h4l2.68 13.39a2 2 0 0 0 2 1.61h9.72a2 2 0 0 0 2-1.61L23 6H6"/>
                                    </svg>
                                </div>
                                <h2 class="tse-card-title">
                                    {{ __('Your Order') }}
                                    <span class="tse-order-count">({{ $products->count() }} {{ Str::plural('item', $products->count()) }})</span>
                                </h2>
                            </div>
                        </div>
                        <div class="tse-order-items-list">
                            @foreach ($products as $key => $product)
                                @php
                                    $cartItem = $product->cartItem;
                                    $imgUrl = RvMedia::getImageUrl(Arr::get($cartItem->options, 'image'), default: RvMedia::getImageUrl($product->original_product->image, default: RvMedia::getDefaultImage()));
                                @endphp
                                <div class="tse-order-item-row">
                                    <div class="tse-item-thumb-wrapper">
                                        <img src="{{ $imgUrl }}" alt="{{ $product->original_product->name }}" class="tse-item-thumb">
                                    </div>
                                    <div class="tse-item-details">
                                        <h3 class="tse-item-name">{{ $product->original_product->name }}</h3>
                                        @if ($product->variation_attributes)
                                            <p class="tse-item-attr">{{ $product->variation_attributes }}</p>
                                        @endif
                                        <div class="tse-item-qty-badge">
                                            <span>{{ __('Qty') }}: {{ $cartItem->qty }}</span>
                                        </div>
                                    </div>
                                    <div class="tse-item-price-col">
                                        <span class="tse-item-price">{{ format_price($cartItem->price) }}</span>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    </div>

                    {{-- CARD 2: Apply Coupon --}}
                    <div class="tse-coupon-box @if (session()->has('applied_coupon_code')) tse-coupon-applied @endif">
                        <div class="tse-coupon-header" id="tse-coupon-toggle-btn">
                            <div class="tse-coupon-left">
                                <div class="tse-coupon-icon">
                                    <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="#F97316" stroke-width="2.2" stroke-linecap="round" stroke-linejoin="round">
                                        <path d="M20.59 13.41l-7.17 7.17a2 2 0 0 1-2.83 0L2 12V2h10l8.59 8.59a2 2 0 0 1 0 2.82z"/>
                                        <circle cx="7" cy="7" r="1.5" fill="#F97316"/>
                                    </svg>
                                </div>
                                <span class="tse-coupon-title">
                                    @if (session()->has('applied_coupon_code'))
                                        {{ __('Coupon Applied') }}: <strong>{{ session('applied_coupon_code') }}</strong>
                                    @else
                                        {{ __('Apply coupon') }}
                                    @endif
                                </span>
                            </div>
                            <div class="tse-coupon-right">
                                @if (session()->has('applied_coupon_code'))
                                    <button type="button" class="tse-remove-coupon-btn remove-coupon-code" data-url="{{ route('public.coupon.remove') }}">
                                        {{ __('Remove') }}
                                    </button>
                                @else
                                    <svg class="tse-coupon-chevron" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="#1E293B" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round">
                                        <polyline points="9 18 15 12 9 6"/>
                                    </svg>
                                @endif
                            </div>
                        </div>

                        {{-- Collapsible Coupon Form --}}
                        <div class="tse-coupon-collapse" id="tse-coupon-collapse-content" @if (!session()->has('applied_coupon_code')) style="display: none;" @endif>
                            @if (!session()->has('applied_coupon_code'))
                                <div class="tse-coupon-input-group mt-2">
                                    <input
                                        type="text"
                                        class="form-control coupon-code tse-coupon-input"
                                        name="coupon_code"
                                        placeholder="{{ __('Enter coupon code...') }}"
                                        value="{{ old('coupon_code') }}"
                                    >
                                    <button
                                        type="button"
                                        class="btn apply-coupon-code tse-coupon-submit-btn"
                                        data-url="{{ route('public.coupon.apply') }}"
                                    >
                                        {{ __('Apply') }}
                                    </button>
                                </div>
                                <div class="coupon-error-msg mt-1">
                                    <span class="text-danger"></span>
                                </div>
                            @else
                                <div class="tse-coupon-success-msg mt-2">
                                    <span class="text-success">{{ __('Discount') }}: -{{ format_price($couponDiscountAmount) }}</span>
                                </div>
                            @endif

                            @if (isset($discounts) && $discounts->isNotEmpty())
                                <div class="tse-available-coupons mt-3">
                                    <p class="tse-avail-coupons-title">{{ __('Available Coupons') }}:</p>
                                    <div class="tse-avail-coupons-list">
                                        @foreach ($discounts as $discount)
                                            <div class="tse-avail-coupon-item">
                                                <div class="tse-avail-coupon-code">{{ $discount->code }}</div>
                                                <div class="tse-avail-coupon-desc">{!! BaseHelper::clean($discount->description ?: get_discount_description($discount)) !!}</div>
                                                <button type="button" class="btn btn-sm tse-btn-use-coupon" data-bb-toggle="apply-coupon-code" data-discount-code="{{ $discount->code }}">
                                                    {{ __('Apply') }}
                                                </button>
                                            </div>
                                        @endforeach
                                    </div>
                                </div>
                            @endif
                        </div>
                    </div>

                    {{-- CARD 3: Deliver to --}}
                    @php
                        $userCustomer = auth('customer')->user();
                        $savedName = old('address.name', Arr::get($sessionCheckoutData, 'name')) ?: ($userCustomer ? $userCustomer->name : null);
                        $savedCity = old('address.city', Arr::get($sessionCheckoutData, 'city')) ?: 'Chennai';
                        $savedPhone = old('address.phone', Arr::get($sessionCheckoutData, 'phone')) ?: ($userCustomer ? $userCustomer->phone : '9876543210');
                        $maskedPhone = '•••• ••' . (strlen($savedPhone) >= 4 ? substr($savedPhone, -4) : '3210');
                    @endphp
                    <div class="tse-card tse-card-deliver">
                        <div class="tse-card-header tse-deliver-header">
                            <div class="tse-card-header-left">
                                <div class="tse-card-icon tse-icon-pin">
                                    <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="#F97316" stroke-width="2.2" stroke-linecap="round" stroke-linejoin="round">
                                        <path d="M21 10c0 7-9 13-9 13s-9-6-9-13a9 9 0 0 1 18 0z"/>
                                        <circle cx="12" cy="10" r="3"/>
                                    </svg>
                                </div>
                                <h2 class="tse-card-title">{{ __('Deliver to') }}</h2>
                            </div>
                            <div class="tse-card-header-right">
                                <button type="button" class="tse-change-btn" id="tse-change-address-btn">
                                    {{ __('Change') }}
                                </button>
                            </div>
                        </div>

                        {{-- Address Summary Preview --}}
                        <div class="tse-deliver-summary" id="tse-deliver-summary">
                            <div class="tse-deliver-tag-line">
                                <span class="tse-deliver-tag">{{ __('Home') }}</span>
                                <span class="tse-deliver-dot">•</span>
                                <span class="tse-deliver-city" id="tse-preview-city">{{ $savedCity }}</span>
                            </div>
                            <div class="tse-deliver-phone-line" id="tse-preview-phone">
                                {{ $maskedPhone }}
                            </div>
                        </div>

                        {{-- Expandable Address Form (Collapsed by default like in mockup) --}}
                        <div class="tse-address-form-collapse" id="tse-address-form-collapse" style="display: none;">
                            <div class="form-checkout mt-3">
                                @if ($isShowAddressForm)
                                    @include('plugins/ecommerce::orders.partials.address-form', compact('sessionCheckoutData'))
                                @endif
                                
                                @if (EcommerceHelper::isBillingAddressEnabled())
                                    <div class="mt-3">
                                        @include('plugins/ecommerce::orders.partials.billing-address-form', compact('sessionCheckoutData'))
                                    </div>
                                @endif
                            </div>
                        </div>
                    </div>

                    {{-- CARD 4: Shipping --}}
                    <div class="tse-card tse-card-shipping">
                        <div class="tse-shipping-inner">
                            <div class="tse-shipping-left">
                                <div class="tse-card-icon tse-icon-truck">
                                    <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="#F97316" stroke-width="2.2" stroke-linecap="round" stroke-linejoin="round">
                                        <rect x="1" y="3" width="15" height="13"/>
                                        <polygon points="16 8 20 8 23 11 23 16 16 16 8"/>
                                        <circle cx="5.5" cy="18.5" r="2.5"/>
                                        <circle cx="18.5" cy="18.5" r="2.5"/>
                                    </svg>
                                </div>
                                <h2 class="tse-card-title">{{ __('Shipping') }}</h2>
                            </div>
                            <div class="tse-shipping-right">
                                @if ($shippingAmount > 0)
                                    <span class="tse-shipping-fee-text price-text shipping-price-text">{{ format_price($shippingAmount) }}</span>
                                @else
                                    <span class="tse-free-delivery-badge">{{ __('Free delivery') }}</span>
                                @endif
                            </div>
                        </div>

                        {{-- Hidden or accessible shipping methods list --}}
                        <div class="shipping-info-loading" style="display: none;">
                            <div class="shipping-info-loading-content">
                                <i class="fas fa-spinner fa-spin"></i>
                            </div>
                        </div>
                        @if (!empty($shipping) && count($shipping) > 1)
                            <div class="tse-shipping-methods-wrap mt-2">
                                <ul class="list-group list_payment_method">
                                    @foreach ($shipping as $shippingKey => $shippingItems)
                                        @foreach ($shippingItems as $shippingOption => $shippingItem)
                                            @include('plugins/ecommerce::orders.partials.shipping-option', [
                                                'shippingItem' => $shippingItem,
                                                'attributes' => [
                                                    'id' => 'shipping-method-' . $shippingKey . '-' . $shippingOption,
                                                    'name' => 'shipping_method',
                                                    'class' => 'magic-radio shipping_method_input',
                                                    'checked' => old('shipping_method', $defaultShippingMethod) == $shippingKey && old('shipping_option', $defaultShippingOption) == $shippingOption,
                                                    'disabled' => Arr::get($shippingItem, 'disabled'),
                                                    'data-option' => $shippingOption,
                                                ],
                                            ])
                                        @endforeach
                                    @endforeach
                                </ul>
                            </div>
                        @endif
                    </div>

                    {{-- CARD 5: Pay Using --}}
                    @php
                        $selectedPaymentMethod = request()->input('payment_method', old('payment_method', 'razorpay'));
                    @endphp
                    <div class="tse-card tse-card-payment" id="tse-payment-section">
                        <div class="tse-card-header">
                            <div class="tse-card-header-left">
                                <div class="tse-card-icon tse-icon-wallet">
                                    <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="#F97316" stroke-width="2.2" stroke-linecap="round" stroke-linejoin="round">
                                        <rect x="2" y="5" width="20" height="14" rx="2"/>
                                        <line x1="2" y1="10" x2="22" y2="10"/>
                                    </svg>
                                </div>
                                <h2 class="tse-card-title">{{ __('Pay using') }}</h2>
                            </div>
                        </div>

                        {!! apply_filters(PAYMENT_FILTER_PAYMENT_PARAMETERS, null) !!}

                        <div class="tse-payment-methods-stack">
                            {{-- Option 1: Razorpay --}}
                            <div class="tse-payment-option @if ($selectedPaymentMethod == 'razorpay') tse-selected @endif" data-method="razorpay">
                                <div class="tse-pay-option-top">
                                    <div class="tse-pay-radio-col">
                                        <input
                                            type="radio"
                                            id="tse-pay-razorpay"
                                            name="payment_method"
                                            value="razorpay"
                                            class="tse-custom-radio js_payment_method"
                                            @checked($selectedPaymentMethod == 'razorpay')
                                        >
                                        <label for="tse-pay-razorpay" class="tse-radio-custom-visual"></label>
                                    </div>
                                    <div class="tse-pay-info-col">
                                        <label for="tse-pay-razorpay" class="tse-pay-title">Razorpay</label>
                                    </div>
                                    <div class="tse-pay-badge-col">
                                        <div class="tse-razorpay-logo-wrap">
                                            <svg width="22" height="20" viewBox="0 0 120 120" fill="none" class="tse-razorpay-mark-svg">
                                                <path d="M51.3 14.5L10 105.5h27.4l13.2-29.3 27.6-61.7H51.3z" fill="#0C2340"/>
                                                <path d="M61.4 56.4L42.9 97.4h27.4l34.2-74.8h-26l-17.1 33.8z" fill="#0284C7"/>
                                            </svg>
                                            <span class="tse-razorpay-brand-text">Razorpay</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="tse-pay-option-details">
                                    <span class="tse-pay-subtitle">{{ __('UPI, cards, net banking & wallets') }}</span>
                                    <div class="tse-pay-sublogos-row">
                                        <img src="{{ asset('themes/ninico/img/icons/payment_methods_strip.png') }}" alt="GPay, PhonePe, BHIM, Visa, Mastercard" class="tse-pay-strip-img">
                                    </div>
                                </div>
                            </div>

                            {{-- Option 2: Cash on Delivery (COD) --}}
                            <div class="tse-payment-option @if ($selectedPaymentMethod == 'cod') tse-selected @endif" data-method="cod">
                                <div class="tse-pay-option-top">
                                    <div class="tse-pay-radio-col">
                                        <input
                                            type="radio"
                                            id="tse-pay-cod"
                                            name="payment_method"
                                            value="cod"
                                            class="tse-custom-radio js_payment_method"
                                            @checked($selectedPaymentMethod == 'cod')
                                        >
                                        <label for="tse-pay-cod" class="tse-radio-custom-visual"></label>
                                    </div>
                                    <div class="tse-pay-info-col">
                                        <label for="tse-pay-cod" class="tse-pay-title">{{ __('Cash on Delivery (COD)') }}</label>
                                    </div>
                                    <div class="tse-pay-badge-col">
                                        <div class="tse-cash-icon">
                                            <svg width="38" height="24" viewBox="0 0 38 24" fill="none">
                                                <rect x="1" y="1" width="36" height="22" rx="3" stroke="#0F172A" stroke-width="1.4" fill="#FFFFFF"/>
                                                <rect x="3.5" y="3.5" width="31" height="17" rx="2" stroke="#E2E8F0" stroke-width="1"/>
                                                <circle cx="19" cy="12" r="5" stroke="#CBD5E1" stroke-width="1"/>
                                                <text x="19" y="15.5" font-size="11" font-weight="700" fill="#EA580C" text-anchor="middle" font-family="'Plus Jakarta Sans', sans-serif">₹</text>
                                            </svg>
                                        </div>
                                    </div>
                                </div>
                                <div class="tse-pay-option-details">
                                    <span class="tse-pay-subtitle">{{ __('Pay in cash to the delivery partner') }}</span>
                                </div>
                            </div>

                            {{-- Hidden system payment methods from plugins --}}
                            @if (is_plugin_active('payment') && $orderAmount)
                                @php
                                    $paymentMethods = apply_filters(PAYMENT_FILTER_ADDITIONAL_PAYMENT_METHODS, null, [
                                        'amount' => format_price($orderAmount, null, true),
                                        'currency' => strtoupper(get_application_currency()->title),
                                        'name' => null,
                                        'selected' => PaymentMethods::getSelectedMethod(),
                                        'default' => PaymentMethods::getDefaultMethod(),
                                        'selecting' => PaymentMethods::getSelectingMethod(),
                                    ]) . PaymentMethods::render();
                                @endphp
                                <div class="d-none tse-system-payment-methods">
                                    {!! $paymentMethods !!}
                                </div>
                            @endif
                        </div>
                    </div>

                    {{-- CARD 6: Order Total (with Blue Receipt/Bill Icon) --}}
                    <div class="tse-card tse-card-total">
                        <div class="tse-card-header">
                            <div class="tse-card-header-left">
                                <div class="tse-card-icon tse-icon-total">
                                    <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="#2563EB" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                        <rect x="2" y="3" width="20" height="18" rx="3"/>
                                        <line x1="2" y1="9" x2="22" y2="9"/>
                                        <circle cx="6" cy="6" r="1.2" fill="#F97316" stroke="none"/>
                                        <circle cx="10" cy="6" r="1.2" fill="#F59E0B" stroke="none"/>
                                    </svg>
                                </div>
                                <h2 class="tse-card-title">{{ __('Order Total') }}</h2>
                            </div>
                        </div>
                        <div class="tse-total-breakdown">
                            <div class="tse-total-row">
                                <span class="tse-total-label">{{ __('Subtotal') }} ({{ $products->count() }} {{ Str::plural('item', $products->count()) }})</span>
                                <span class="tse-total-val price-text sub-total-text">{{ format_price(Cart::instance('cart')->rawSubTotal()) }}</span>
                            </div>

                            <div class="tse-total-row">
                                <span class="tse-total-label">{{ __('Delivery fee') }}</span>
                                <span class="tse-total-val price-text shipping-price-text">
                                    @if ($shippingAmount > 0)
                                        {{ format_price($shippingAmount) }}
                                    @else
                                        ₹0
                                    @endif
                                </span>
                            </div>

                            <div class="tse-total-row">
                                <span class="tse-total-label">{{ __('Tax') }}</span>
                                <span class="tse-total-val price-text tax-price-text">
                                    {{ format_price(Cart::instance('cart')->rawTax() ?: 0) }}
                                </span>
                            </div>

                            @if ($couponDiscountAmount > 0)
                                <div class="tse-total-row tse-row-discount">
                                    <span class="tse-total-label text-success">{{ __('Coupon Discount') }}</span>
                                    <span class="tse-total-val text-success">-{{ format_price($couponDiscountAmount) }}</span>
                                </div>
                            @endif

                            @if ($promotionDiscountAmount > 0)
                                <div class="tse-total-row tse-row-discount">
                                    <span class="tse-total-label text-success">{{ __('Promotion Discount') }}</span>
                                    <span class="tse-total-val text-success">-{{ format_price($promotionDiscountAmount) }}</span>
                                </div>
                            @endif

                            <div class="tse-total-divider"></div>

                            <div class="tse-total-row tse-total-row-grand">
                                <span class="tse-grand-label">{{ __('Total (Incl. taxes)') }}</span>
                                <span class="tse-grand-val total-text raw-total-text" data-price="{{ format_price($rawTotal, null, true) }}">
                                    {{ format_price($orderAmount) }}
                                </span>
                            </div>
                        </div>
                    </div>

                    {{-- Desktop Place Order Action Card (shown on big screens, hidden on mobile) --}}
                    <div class="tse-desktop-submit-wrap">
                        <button
                            class="tse-desktop-submit-btn payment-checkout-btn payment-checkout-btn-step"
                            id="tse-desktop-place-order-btn"
                            data-processing-text="{{ __('Processing...') }}"
                            data-error-header="{{ __('Error') }}"
                            type="submit"
                        >
                            <span class="tse-desktop-btn-label">{{ __('Place Order') }}</span>
                            <span class="tse-desktop-btn-price" id="tse-desktop-btn-total">{{ format_price($orderAmount) }}</span>
                            <span class="tse-desktop-btn-arrow">&rarr;</span>
                        </button>
                        <div class="tse-desktop-secure-badge">
                            <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="#16A34A" stroke-width="2.2" stroke-linecap="round" stroke-linejoin="round">
                                <path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10z"/>
                                <path d="m9 12 2 2 4-4"/>
                            </svg>
                            <span>{{ __('Safe & Secure Checkout • 100% Authentic Guarantee') }}</span>
                        </div>
                    </div>

                    {{-- Order Notes (Optional collapsible) --}}
                    <div class="tse-order-notes-wrap mb-4">
                        <label class="form-label tse-notes-label" for="description">{{ __('Order notes (optional)') }}</label>
                        <textarea
                            class="form-control tse-notes-input"
                            id="description"
                            name="description"
                            rows="2"
                            placeholder="{{ __('Notes about your order, e.g. special delivery instructions.') }}"
                        >{{ old('description') }}</textarea>
                    </div>

                </div>

                {{-- FIXED BOTTOM BAR (Tall, Highly Clickable, Matches Mockup) --}}
                <div class="tse-fixed-bottom-bar">
                    <div class="tse-bottom-inner">
                        {{-- Left: Selected Payment Method Pill with Razorpay Blue Emblem and UPI badges --}}
                        <div class="tse-bottom-pay-pill" id="tse-bottom-pay-selector" role="button" tabindex="0">
                            <div class="tse-bottom-method-icon" id="tse-bottom-method-icon">
                                <svg width="22" height="22" viewBox="0 0 120 120" fill="none" class="tse-razorpay-mark-svg">
                                    <path d="M51.3 14.5L10 105.5h27.4l13.2-29.3 27.6-61.7H51.3z" fill="#0C2340"/>
                                    <path d="M61.4 56.4L42.9 97.4h27.4l34.2-74.8h-26l-17.1 33.8z" fill="#0284C7"/>
                                </svg>
                            </div>
                            <div class="tse-bottom-pay-info">
                                <span class="tse-bottom-pay-tag">{{ __('PAY USING') }}</span>
                                <span class="tse-bottom-pay-name" id="tse-bottom-method-label">
                                    {{ $selectedPaymentMethod == 'cod' ? __('Cash on Delivery') : 'Razorpay' }}
                                </span>
                            </div>
                            <div class="tse-bottom-pay-chevron">
                                <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="#0F172A" stroke-width="2.6" stroke-linecap="round" stroke-linejoin="round">
                                    <polyline points="6 9 12 15 18 9"/>
                                </svg>
                            </div>
                        </div>

                        {{-- Right: Taller, Highly Clickable Blue Action Button --}}
                        <button
                            class="tse-bottom-submit-btn payment-checkout-btn payment-checkout-btn-step"
                            id="tse-bottom-place-order-btn"
                            data-processing-text="{{ __('Processing...') }}"
                            data-error-header="{{ __('Error') }}"
                            type="submit"
                        >
                            <span class="tse-submit-price" id="tse-bottom-btn-total">{{ format_price($orderAmount) }}</span>
                            <span class="tse-submit-text">{{ __('Place Order') }} &rarr;</span>
                        </button>
                    </div>
                </div>

            </x-core::form>
        </div>

        @if (is_plugin_active('payment'))
            @include('plugins/payment::partials.footer')
        @endif
    @else
        <div class="container my-5 text-center">
            <div class="alert alert-warning py-4">
                <h4>{{ __('Your cart is currently empty.') }}</h4>
                <a href="{{ BaseHelper::getHomepageUrl() }}" class="btn btn-primary mt-3">{{ __('Back to shopping') }}</a>
            </div>
        </div>
    @endif
@stop

@push('footer')
    <script type="text/javascript" src="{{ asset('vendor/core/core/js-validation/js/js-validation.js') }}"></script>

    {!! JsValidator::formRequest(
        Botble\Ecommerce\Http\Requests\SaveCheckoutInformationRequest::class,
        '#checkout-form',
    ) !!}

    <script>
        $(document).ready(function() {
            var razorpaySvg = '<svg width="22" height="22" viewBox="0 0 120 120" fill="none" class="tse-razorpay-mark-svg"><path d="M51.3 14.5L10 105.5h27.4l13.2-29.3 27.6-61.7H51.3z" fill="#0C2340"/><path d="M61.4 56.4L42.9 97.4h27.4l34.2-74.8h-26l-17.1 33.8z" fill="#0284C7"/></svg>';
            var codSvg = '<svg width="24" height="16" viewBox="0 0 38 24" fill="none"><rect x="1" y="1" width="36" height="22" rx="3" stroke="#0F172A" stroke-width="1.4" fill="#FFFFFF"/><rect x="3.5" y="3.5" width="31" height="17" rx="2" stroke="#E2E8F0" stroke-width="1"/><circle cx="19" cy="12" r="5" stroke="#CBD5E1" stroke-width="1"/><text x="19" y="15.5" font-size="11" font-weight="700" fill="#EA580C" text-anchor="middle" font-family="\'Plus Jakarta Sans\', sans-serif">₹</text></svg>';

            var userChosenPaymentMethod = 'razorpay';

            // Function to sync payment option visual card and bottom bar label & icon
            function syncPaymentSelection() {
                var method = userChosenPaymentMethod;
                
                $('.tse-payment-option').removeClass('tse-selected');
                var $activeOpt = $('.tse-payment-option[data-method="' + method + '"]');
                if ($activeOpt.length) {
                    $activeOpt.addClass('tse-selected');
                    $activeOpt.find('input[type="radio"]').prop('checked', true);
                }
                
                var label = (method === 'cod') ? 'Cash on Delivery' : 'Razorpay';
                $('#tse-bottom-method-label').text(label);

                if (method === 'cod') {
                    $('#tse-bottom-method-icon').html(codSvg);
                } else {
                    $('#tse-bottom-method-icon').html(razorpaySvg);
                }

                // Sync with any hidden system radio
                var $sysRadio = $('.tse-system-payment-methods input[name="payment_method"][value="' + method + '"]');
                if ($sysRadio.length) {
                    $sysRadio.prop('checked', true);
                }
            }

            syncPaymentSelection();
            document.addEventListener('payment-form-reloaded', syncPaymentSelection);
            $(document).ajaxComplete(function() {
                syncPaymentSelection();
                syncTotalToBtn();
            });

            // Coupon toggle
            $(document).on('click', '#tse-coupon-toggle-btn', function(e) {
                if ($(e.target).closest('.remove-coupon-code').length) {
                    return; // Don't toggle when clicking remove
                }
                $('#tse-coupon-collapse-content').slideToggle(200);
            });

            // Deliver to - Change address toggle
            $(document).on('click', '#tse-change-address-btn', function() {
                var $form = $('#tse-address-form-collapse');
                $form.slideToggle(200);
                var $btn = $(this);
                if ($btn.text().trim() === '{{ __('Change') }}') {
                    $btn.text('{{ __('Done') }}');
                } else {
                    $btn.text('{{ __('Change') }}');
                }
            });

            // Live update summary preview when address fields change
            $(document).on('input change', '#address_city, #address_name, #address_phone', function() {
                var city = $('#address_city').val() || 'Chennai';
                var phone = $('#address_phone').val() || '9876543210';
                var masked = '•••• ••' + (phone.length >= 4 ? phone.slice(-4) : '3210');
                
                $('#tse-preview-city').text(city);
                $('#tse-preview-phone').text(masked);
            });

            // Payment Option Selection
            $(document).on('click', '.tse-payment-option', function() {
                userChosenPaymentMethod = $(this).data('method');
                syncPaymentSelection();
            });

            // Auto-expand address form if user taps Place Order and address fields are incomplete (works for both mobile & desktop buttons)
            $(document).on('click', '#tse-bottom-place-order-btn, #tse-desktop-place-order-btn', function(e) {
                var $addressCollapse = $('#tse-address-form-collapse');
                if ($addressCollapse.is(':hidden')) {
                    var name = $('input[name="address[name]"]').val();
                    var phone = $('input[name="address[phone]"]').val();
                    var address = $('input[name="address[address]"]').val();
                    if (!name || !phone || !address) {
                        e.preventDefault();
                        $addressCollapse.slideDown(250);
                        $('#tse-change-address-btn').text('{{ __('Done') }}');
                        $('html, body').animate({
                            scrollTop: $('#tse-deliver-summary').offset().top - 70
                        }, 300);
                        return false;
                    }
                }
            });

            // Bottom bar payment pill click -> scroll to payment section
            $(document).on('click', '#tse-bottom-pay-selector', function(e) {
                e.preventDefault();
                var $paySection = $('#tse-payment-section');
                if ($paySection.length) {
                    var targetTop = $paySection.offset().top - 70;
                    $('html, body').animate({ scrollTop: targetTop }, 300);
                }
            });

            // Sync total price to bottom & desktop button whenever raw-total-text updates
            var syncTotalToBtn = function() {
                var total = $('.raw-total-text').text().trim();
                if (total) {
                    $('#tse-bottom-btn-total').text(total);
                    $('#tse-desktop-btn-total').text('(' + total + ')');
                }
            };

            // Observer or interval to keep button amount synced during AJAX updates
            var targetNode = document.querySelector('.raw-total-text');
            if (targetNode) {
                var observer = new MutationObserver(syncTotalToBtn);
                observer.observe(targetNode, { characterData: true, childList: true, subtree: true });
            }
        });
    </script>
@endpush
