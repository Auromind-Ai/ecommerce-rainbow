@php
    Theme::asset()
        ->usePath()
        ->add('jquery-bar-rating-css', 'plugins/jquery-bar-rating/fontawesome-stars.css');
    Theme::asset()
        ->container('footer')
        ->usePath()
        ->add('jquery-bar-rating-js', 'plugins/jquery-bar-rating/jquery.barrating.min.js');

    Theme::asset()
        ->usePath()
        ->add('lightgallery-css', 'plugins/lightgallery/css/lightgallery.min.css');
    Theme::asset()
        ->container('footer')
        ->usePath()
        ->add('lightgallery-js', 'plugins/lightgallery/js/lightgallery.min.js');

    $flashSale = $product->latestFlashSales()->first();

    if ($flashSale) {
         Theme::asset()
            ->container('footer')
            ->usePath()
            ->add('countdown-js', 'js/countdown.js');
    }

    Theme::set('pageTitle', '');
    Theme::set('hasBreadcrumb', false);

    $salePercent = 0;
    if ($product->isOnSale() && $product->price_with_taxes > 0) {
        $salePercent = round((($product->price_with_taxes - $product->front_sale_price_with_taxes) / $product->price_with_taxes) * 100);
    }
    if ($salePercent <= 0 && $product->sale_percent) {
        $salePercent = $product->sale_percent;
    }
@endphp

<div class="tse-product-page-container pt-20 pb-50">
    <div class="row gx-3 gx-lg-5 gy-4 mb-30">
        {{-- Left Column: Gallery --}}
        <div class="col-lg-6 col-md-12">
            @include(Theme::getThemeNamespace('views.ecommerce.includes.product-gallery'))
        </div>

        {{-- Right Column: Product Details & Photo Upload --}}
        <div class="col-lg-6 col-md-12">
            <div class="tse-product-details-wrap">
                {{-- 1. Badges & Rating Row --}}
                <div class="tse-top-meta-row d-flex align-items-center justify-content-between flex-wrap gap-2 mb-3">
                    <div class="d-flex align-items-center gap-3">
                        @if ($salePercent > 0)
                            <span class="tse-badge-sale">{{ $salePercent }}% OFF</span>
                        @endif
                        <div class="tse-rating-wrap d-flex align-items-center gap-1">
                            <div class="tse-stars text-warning">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                            </div>
                            <span class="tse-reviews-text">{{ __(':count Reviews', ['count' => $product->reviews_count]) }}</span>
                        </div>
                    </div>
                    @if (!$product->isOutOfStock())
                        <span class="tse-badge-stock">{{ __('In Stock') }}</span>
                    @else
                        <span class="tse-badge-out-stock">{{ __('Out of Stock') }}</span>
                    @endif
                </div>

                {{-- 2. Title --}}
                <h1 class="tse-product-title">{!! BaseHelper::clean($product->name) !!}</h1>

                {{-- 3. Price Row --}}
                <div class="tse-price-row d-flex align-items-baseline gap-2 mb-3">
                    <span class="tse-price-current">{{ format_price($product->front_sale_price_with_taxes) }}</span>
                    @if ($product->isOnSale())
                        <del class="tse-price-original">{{ format_price($product->price_with_taxes) }}</del>
                    @endif
                    <span class="tse-price-note text-muted small ms-1">{{ __('• Base starting price (final pricing decided on call)') }}</span>
                </div>

                {{-- 4. Short Description --}}
                <div class="tse-product-desc mb-4">
                    <p>{!! BaseHelper::clean($product->description) !!}</p>
                </div>

                <form
                    id="tse-custom-order-form"
                    method="POST"
                    action="{{ route('public.ajax.custom-order-request') }}"
                    enctype="multipart/form-data"
                >
                    @csrf
                    <input
                        id="hidden-product-id"
                        name="id"
                        type="hidden"
                        value="{{ $product->is_variation || !$product->defaultVariation->product_id ? $product->id : $product->defaultVariation->product_id }}"
                    />

                    {{-- Variations / Options (if any) --}}
                    @if ($product->variations->isNotEmpty())
                        <div class="tpproductdot mb-3">
                            {!! render_product_swatches($product, [
                                'selected' => $selectedAttrs,
                                'view' => Theme::getThemeNamespace('views.ecommerce.attributes.swatches-renderer'),
                            ]) !!}
                        </div>
                    @endif
                    {!! render_product_options($product) !!}
                    {!! apply_filters(ECOMMERCE_PRODUCT_DETAIL_EXTRA_HTML, null, $product) !!}

                    {{-- 5. Custom Photo Upload Card --}}
                    <div class="tse-upload-card mb-3" id="tse-upload-card-wrapper">
                        <div class="tse-upload-card-header d-flex align-items-center justify-content-between flex-wrap gap-2 mb-3">
                            <div class="d-flex align-items-center gap-2">
                                <span class="tse-upload-header-icon">
                                    <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="#EA580C" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                        <rect width="18" height="18" x="3" y="3" rx="2" ry="2"/>
                                        <circle cx="9" cy="9" r="2"/>
                                        <path d="m21 15-3.086-3.086a2 2 0 0 0-2.828 0L6 21"/>
                                    </svg>
                                </span>
                                <h4 class="tse-upload-header-title m-0">
                                    {{ __('Upload your couple photo') }} <span class="tse-req-star">*</span>
                                </h4>
                            </div>
                            <span class="badge bg-primary-subtle text-primary border border-primary-subtle small px-2 py-1" id="tse-step-indicator">
                                {{ __('Step 1 of 2') }}
                            </span>
                        </div>

                        {{-- Dashed Dropzone Box --}}
                        <div class="tse-dropzone-box" id="tse-photo-dropzone">
                            {{-- Idle state inside dropzone --}}
                            <div class="tse-dropzone-idle" id="tse-dropzone-idle">
                                <div class="tse-dropzone-cloud-icon mb-2">
                                    <svg width="40" height="40" viewBox="0 0 24 24" fill="none" stroke="#2073BF" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round">
                                        <path d="M17.5 19H9a7 7 0 1 1 6.71-9h1.79a4.5 4.5 0 1 1 0 9Z"/>
                                        <polyline points="12 12 12 16"/>
                                        <polyline points="9 13 12 10 15 13"/>
                                    </svg>
                                </div>
                                <p class="tse-dropzone-prompt mb-2">{{ __('Drag & drop your photo here, or') }}</p>
                                <button type="button" class="tse-btn-choose-photo" id="tse-btn-choose-file">
                                    {{ __('Choose photo') }}
                                </button>
                                <p class="tse-dropzone-hint mt-2 mb-0">
                                    {{ __('JPG, PNG or WebP • Make sure both faces are clearly visible') }}
                                </p>
                            </div>

                            {{-- Selected file state (hidden initially) --}}
                            <div class="tse-dropzone-selected d-none" id="tse-dropzone-selected">
                                <div class="d-flex align-items-center justify-content-between p-2">
                                    <div class="d-flex align-items-center gap-3">
                                        <div class="tse-thumb-preview-wrap">
                                            <img id="tse-file-thumb" src="" alt="Photo preview">
                                        </div>
                                        <div class="text-start">
                                            <div class="tse-file-name text-truncate" id="tse-file-name-text">photo.jpg</div>
                                            <div class="tse-file-status text-success small fw-bold">
                                                <i class="fas fa-check-circle"></i> {{ __('Photo attached successfully!') }}
                                            </div>
                                        </div>
                                    </div>
                                    <button type="button" class="tse-btn-remove-photo" id="tse-btn-remove-file" title="{{ __('Change photo') }}">
                                        <i class="fal fa-times"></i>
                                    </button>
                                </div>
                            </div>

                            <input
                                type="file"
                                name="custom_photo"
                                id="tse-custom-photo-input"
                                accept="image/jpeg,image/png,image/webp"
                                class="d-none"
                            >
                        </div>

                        {{-- Card footnote --}}
                        <div class="tse-upload-card-footnote mt-3">
                            <i class="fal fa-info-circle"></i>
                            <span>{{ __('Your photo will be used by our master sculptors to personalize this statue.') }}</span>
                        </div>
                    </div>

                    {{-- Step 1 Primary Action (Visible until photo attached) --}}
                    <div id="tse-step1-action-box" class="tse-step1-action-box mb-4">
                        <button
                            type="button"
                            class="btn tse-btn-step1-upload w-100 d-flex align-items-center justify-content-center gap-2 py-3"
                            id="tse-btn-step1-trigger"
                        >
                            <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.2" stroke-linecap="round" stroke-linejoin="round">
                                <path d="M21 15v4a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2v-4"></path>
                                <polyline points="17 8 12 3 7 8"></polyline>
                                <line x1="12" y1="3" x2="12" y2="15"></line>
                            </svg>
                            <span class="fw-bold fs-6">{{ __('Upload Photo to Customize & Get Price →') }}</span>
                        </button>
                        <p class="text-center text-muted small mt-2 mb-0">
                            <i class="fas fa-shield-check text-success me-1"></i> {{ __('100% handcrafted from your photo • Free direct phone consultation') }}
                        </p>
                    </div>

                    {{-- Step 2: Customer Consultation Details Card (Smoothly expands after photo attached) --}}
                    <div id="tse-step2-wrapper" class="tse-step2-wrapper d-none">
                        <div class="tse-customer-fields-card mb-3 p-3 rounded-4 bg-light border">
                            <div class="d-flex align-items-center justify-content-between mb-2">
                                <div class="d-flex align-items-center gap-2">
                                    <i class="fas fa-phone-alt text-primary"></i>
                                    <h5 class="m-0 fw-bold fs-6 text-dark">{{ __('Who should our sculptor call?') }}</h5>
                                </div>
                                <span class="badge bg-success-subtle text-success border border-success-subtle small px-2 py-1">
                                    {{ __('Step 2 of 2') }}
                                </span>
                            </div>
                            <p class="text-muted small mb-3">
                                {{ __('Our owner will review your photo and call you directly to finalize custom size, finish, and decide your pricing!') }}
                            </p>

                            <div class="row g-2 mb-2">
                                <div class="col-md-6 col-12">
                                    <label class="form-label small fw-bold text-dark mb-1">
                                        {{ __('Full Name') }} <span class="text-danger">*</span>
                                    </label>
                                    <div class="input-group">
                                        <span class="input-group-text bg-white border-end-0 text-muted"><i class="fal fa-user"></i></span>
                                        <input
                                            type="text"
                                            name="customer_name"
                                            id="tse-input-name"
                                            class="form-control tse-form-input border-start-0 ps-0"
                                            placeholder="{{ __('Enter your full name') }}"
                                            required
                                        >
                                    </div>
                                </div>
                                <div class="col-md-6 col-12">
                                    <label class="form-label small fw-bold text-dark mb-1">
                                        {{ __('Phone / WhatsApp Number') }} <span class="text-danger">*</span>
                                    </label>
                                    <div class="input-group">
                                        <span class="input-group-text bg-white border-end-0 text-success"><i class="fab fa-whatsapp"></i></span>
                                        <input
                                            type="tel"
                                            name="customer_phone"
                                            id="tse-input-phone"
                                            class="form-control tse-form-input border-start-0 ps-0"
                                            placeholder="{{ __('e.g. +91 98765 43210') }}"
                                            required
                                        >
                                    </div>
                                </div>
                            </div>

                            <div class="mb-2">
                                <label class="form-label small fw-bold text-dark mb-1">
                                    {{ __('Special Instructions / Custom Notes (Optional)') }}
                                </label>
                                <textarea
                                    name="customer_notes"
                                    id="tse-input-notes"
                                    class="form-control tse-form-input"
                                    rows="2"
                                    placeholder="{{ __('e.g. Preferred height (6-inch / 8-inch), wooden base inscription, or event date...') }}"
                                ></textarea>
                            </div>
                        </div>

                        {{-- Security Trust Tag --}}
                        <div class="tse-secure-tag d-flex align-items-center gap-2 mb-3">
                            <svg width="15" height="15" viewBox="0 0 24 24" fill="none" stroke="#16A34A" stroke-width="2.2" stroke-linecap="round" stroke-linejoin="round">
                                <rect width="18" height="11" x="3" y="11" rx="2" ry="2"/>
                                <path d="M7 11V7a5 5 0 0 1 10 0v4"/>
                            </svg>
                            <span>{{ __('Secure photo upload & direct artisan consultation') }}</span>
                        </div>

                        {{-- Error Alert Banner --}}
                        <div id="tse-order-error-alert" class="alert alert-danger d-none p-2 mb-3 small" role="alert"></div>

                        {{-- Direct Confirm Button --}}
                        <div class="tse-action-bar mb-4">
                            <button
                                type="button"
                                class="btn tse-btn-confirm-order w-100 d-flex align-items-center justify-content-center gap-2 py-3"
                                id="tse-btn-confirm-submit"
                            >
                                <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round">
                                    <path d="M22 11.08V12a10 10 0 1 1-5.93-9.14"></path>
                                    <polyline points="22 4 12 14.01 9 11.01"></polyline>
                                </svg>
                                <span class="tse-btn-text fw-bold fs-6">{{ __('Confirm Custom Order Request') }}</span>
                            </button>
                            <p class="text-center text-muted small mt-2 mb-0">
                                <i class="fas fa-check-circle text-success me-1"></i> {{ __('No payment now — our sculptor calls you directly to finalize design & pricing!') }}
                            </p>
                        </div>
                    </div>
                </form>

                {{-- 7. Post-Submission Thank You Card (Hidden initially) --}}
                <div id="tse-thank-you-view" class="tse-thank-you-view d-none p-4 rounded-4 bg-white border shadow-sm mb-4 text-center">
                    <div class="tse-thank-you-icon-circle mx-auto mb-3">
                        <svg width="44" height="44" viewBox="0 0 24 24" fill="none" stroke="#16A34A" stroke-width="2.6" stroke-linecap="round" stroke-linejoin="round">
                            <path d="M22 11.08V12a10 10 0 1 1-5.93-9.14"></path>
                            <polyline points="22 4 12 14.01 9 11.01"></polyline>
                        </svg>
                    </div>
                    <h3 class="fw-bold text-dark mb-1">{{ __('Thank You!') }}</h3>
                    <h5 class="text-primary fw-bold mb-2" id="tse-ty-customer-name"></h5>
                    <p class="text-muted small mb-3">
                        {{ __('Your custom statue details & photo have been successfully received.') }}
                    </p>

                    <div class="tse-ty-summary-box p-3 rounded-3 bg-light text-start mb-3">
                        <div class="d-flex justify-content-between py-1 border-bottom">
                            <span class="text-muted small">{{ __('Order Request #:') }}</span>
                            <span class="fw-bold text-primary small" id="tse-ty-order-code">#10000000</span>
                        </div>
                        <div class="d-flex justify-content-between py-1 border-bottom">
                            <span class="text-muted small">{{ __('Contact Number:') }}</span>
                            <span class="fw-bold text-dark small" id="tse-ty-phone"></span>
                        </div>
                        <div class="d-flex justify-content-between py-1">
                            <span class="text-muted small">{{ __('Status:') }}</span>
                            <span class="badge bg-success-subtle text-success border border-success-subtle small">{{ __('Request Received - Owner Will Call') }}</span>
                        </div>
                    </div>

                    <div class="alert alert-info border-0 bg-info-subtle text-start p-3 mb-3 d-flex align-items-start gap-2">
                        <i class="fas fa-headset text-info fs-5 mt-1"></i>
                        <div class="small text-dark">
                            <strong>{{ __('We will contact you soon!') }}</strong><br>
                            {{ __('Our owner / artisan will receive your photo in the admin panel and call you shortly on your number to discuss customization, dimensions, and finalize your pricing.') }}
                        </div>
                    </div>

                    <button type="button" class="btn btn-outline-primary rounded-pill px-4 btn-sm" id="tse-btn-reset-order">
                        <i class="fal fa-redo me-1"></i> {{ __('Submit Another Custom Statue') }}
                    </button>
                </div>

                {{-- 7. 3-Column Feature Highlights Strip --}}
                <div class="tse-features-strip mb-4">
                    <div class="tse-feature-col">
                        <div class="tse-feature-icon-box">
                            <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="#EA580C" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round">
                                <path d="M14.5 4h-5L7 7H4a2 2 0 0 0-2 2v9a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2V9a2 2 0 0 0-2-2h-3l-2.5-3z"/>
                                <circle cx="12" cy="13" r="3"/>
                            </svg>
                        </div>
                        <div class="tse-feature-text">{{ __('Personalized from your photo') }}</div>
                    </div>
                    <div class="tse-feature-col">
                        <div class="tse-feature-icon-box">
                            <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="#EA580C" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round">
                                <path d="M18 11V6a2 2 0 0 0-4 0v4"/>
                                <path d="M14 10V4a2 2 0 0 0-4 0v6"/>
                                <path d="M10 10.5V6a2 2 0 0 0-4 0v8"/>
                                <path d="M18 8a2 2 0 1 1 4 0v6a8 8 0 0 1-8 8h-2c-2.8 0-4.5-.86-5.99-2.34l-3.6-3.6a2 2 0 0 1 2.83-2.82L7 15"/>
                            </svg>
                        </div>
                        <div class="tse-feature-text">{{ __('Hand-finished detail') }}</div>
                    </div>
                    <div class="tse-feature-col">
                        <div class="tse-feature-icon-box">
                            <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="#EA580C" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round">
                                <rect x="3" y="8" width="18" height="14" rx="2"/>
                                <path d="M12 8v14"/>
                                <path d="M19 12H5"/>
                                <path d="M12 8a3 3 0 0 0 0-6c-2 0-3 2-3 3 0 1 1 3 3 3z"/>
                                <path d="M12 8a3 3 0 0 1 0-6c2 0 3 2 3 3 0 1-1 3-3 3z"/>
                            </svg>
                        </div>
                        <div class="tse-feature-text">{{ __('Gift-ready packaging') }}</div>
                    </div>
                </div>

                {{-- 8. SKU & Categories Metadata --}}
                <div class="tse-meta-line d-flex align-items-center flex-wrap gap-2 text-muted small pt-2 mb-4">
                    @if ($product->sku)
                        <span class="tse-meta-item">
                            <span class="tse-meta-label fw-bold">{{ __('SKU:') }}</span>
                            <span class="tse-meta-val text-dark ms-1">{{ $product->sku }}</span>
                        </span>
                    @endif
                    @if ($product->sku && $product->categories->isNotEmpty())
                        <span class="tse-meta-divider text-muted opacity-50">|</span>
                    @endif
                    @if ($product->categories->isNotEmpty())
                        <span class="tse-meta-item">
                            <span class="tse-meta-label fw-bold">{{ __('Categories:') }}</span>
                            @foreach ($product->categories as $category)
                                <a href="{{ $category->url }}" class="tse-meta-link ms-1 text-dark text-decoration-none">{{ $category->name . (!$loop->last ? ',' : null) }}</a>
                            @endforeach
                        </span>
                    @endif
                </div>
            </div>
        </div>
    </div>

    {{-- Tabs Section: Description, Reviews, Q&A --}}
    <div class="tse-tabs-container mt-4 mb-60">
        <div class="tse-tabs-header border-bottom mb-30">
            <ul class="nav nav-tabs tse-clean-tabs" id="productDetailTabs" role="tablist">
                <li class="nav-item" role="presentation">
                    <button
                        class="nav-link active"
                        id="tab-desc-btn"
                        data-bs-toggle="tab"
                        data-bs-target="#tab-description"
                        type="button"
                        role="tab"
                        aria-controls="tab-description"
                        aria-selected="true"
                    >
                        {{ __('Description') }}
                    </button>
                </li>
                @if (EcommerceHelper::isReviewEnabled())
                    <li class="nav-item" role="presentation">
                        <button
                            class="nav-link"
                            id="tab-reviews-btn"
                            data-bs-toggle="tab"
                            data-bs-target="#tab-reviews"
                            type="button"
                            role="tab"
                            aria-controls="tab-reviews"
                            aria-selected="false"
                        >
                            {{ __('Reviews (:count)', ['count' => number_format($product->reviews_count)]) }}
                        </button>
                    </li>
                @endif
                @if (is_plugin_active('faq') && count($product->faq_items) > 0)
                    <li class="nav-item" role="presentation">
                        <button
                            class="nav-link"
                            id="tab-faq-btn"
                            data-bs-toggle="tab"
                            data-bs-target="#tab-faq"
                            type="button"
                            role="tab"
                            aria-controls="tab-faq"
                            aria-selected="false"
                        >
                            {{ __('Questions & Answers') }}
                        </button>
                    </li>
                @endif
            </ul>
        </div>

        <div class="tab-content" id="productDetailTabsContent">
            <div
                class="tab-pane fade show active"
                id="tab-description"
                role="tabpanel"
                aria-labelledby="tab-desc-btn"
            >
                <div class="ck-content tse-desc-body">
                    {!! BaseHelper::clean($product->content) !!}
                </div>
                @if (theme_option('facebook_comment_enabled_in_product', 'no') === 'yes')
                    <div class="postbox__comment mb-65">
                        <h3 class="postbox__comment-title">{{ __('Comment') }}</h3>
                        {!! apply_filters(BASE_FILTER_PUBLIC_COMMENT_AREA, null, $product) !!}
                    </div>
                @endif
            </div>

            @if (EcommerceHelper::isReviewEnabled())
                <div
                    class="tab-pane fade"
                    id="tab-reviews"
                    role="tabpanel"
                    aria-labelledby="tab-reviews-btn"
                >
                    @include('plugins/ecommerce::themes.includes.reviews')
                </div>
            @endif

            @if (is_plugin_active('faq') && count($product->faq_items) > 0)
                <div
                    class="tab-pane fade"
                    id="tab-faq"
                    role="tabpanel"
                    aria-labelledby="tab-faq-btn"
                >
                    <div class="accordion" id="accordionFaqs">
                        @foreach ($product->faq_items as $faq)
                            <div class="accordion-item tp-accordion-item">
                                <h2 class="accordion-header tp-accordion-header" id="heading-{{ $loop->index }}">
                                    <button
                                        data-bs-toggle="collapse"
                                        data-bs-target="#collapse-{{ $loop->index }}"
                                        type="button"
                                        aria-expanded="{{ $loop->first ? 'true' : 'false' }}"
                                        aria-controls="collapse-{{ $loop->index }}"
                                        @class(['accordion-button', 'collapsed' => !$loop->first])
                                    >
                                        {!! BaseHelper::clean($faq[0]['value']) !!}
                                    </button>
                                </h2>
                                <div
                                    id="collapse-{{ $loop->index }}"
                                    data-bs-parent="#accordionFaqs"
                                    aria-labelledby="heading-{{ $loop->index }}"
                                    @class(['accordion-collapse collapse', 'show' => $loop->first])
                                >
                                    <div class="accordion-body tp-accordion-body">
                                        {!! BaseHelper::clean($faq[1]['value']) !!}
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
            @endif
        </div>
    </div>
</div>

{{-- Related Products --}}
@php($relatedProducts = get_related_products($product, 5))
@if ($relatedProducts->isNotEmpty())
    <div class="related-product-area pt-40 pb-50 related-product-border">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-sm-6">
                    <div class="tpsection mb-40">
                        <h2 class="tpsection__title">{{ __('Related Products') }}</h2>
                    </div>
                </div>
                @if ($relatedProducts->count() > 1)
                    <div class="col-sm-6">
                        <div class="tprelated__arrow d-flex align-items-center justify-content-end mb-40">
                            <div class="tprelated__prv"><i class="far fa-long-arrow-left"></i></div>
                            <div class="tprelated__nxt"><i class="far fa-long-arrow-right"></i></div>
                        </div>
                    </div>
                @endif
            </div>
            <div class="swiper-container related-product-active">
                <div class="swiper-wrapper">
                    @foreach ($relatedProducts as $product)
                        <div class="swiper-slide">
                            @include(Theme::getThemeNamespace('views.ecommerce.includes.product-item'))
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
    @include(Theme::getThemeNamespace('views.ecommerce.includes.quick-view-modal'))
@endif

<script>
    document.addEventListener('DOMContentLoaded', function() {
        // Quantity Controls
        const qtyInput = document.querySelector('.tse-qty-input');
        const qtyMinus = document.getElementById('tse-qty-minus');
        const qtyPlus = document.getElementById('tse-qty-plus');

        if (qtyInput && qtyMinus && qtyPlus) {
            qtyMinus.addEventListener('click', function() {
                let val = parseInt(qtyInput.value) || 1;
                if (val > 1) {
                    qtyInput.value = val - 1;
                    qtyInput.dispatchEvent(new Event('change'));
                }
            });
            qtyPlus.addEventListener('click', function() {
                let val = parseInt(qtyInput.value) || 1;
                qtyInput.value = val + 1;
                qtyInput.dispatchEvent(new Event('change'));
            });
        }

        // Progressive 2-Step Custom Order Flow
        const dropzone = document.getElementById('tse-photo-dropzone');
        const fileInput = document.getElementById('tse-custom-photo-input');
        const chooseBtn = document.getElementById('tse-btn-choose-file');
        const idleView = document.getElementById('tse-dropzone-idle');
        const selectedView = document.getElementById('tse-dropzone-selected');
        const fileThumb = document.getElementById('tse-file-thumb');
        const fileNameText = document.getElementById('tse-file-name-text');
        const removeBtn = document.getElementById('tse-btn-remove-file');
        const step1ActionBox = document.getElementById('tse-step1-action-box');
        const step1TriggerBtn = document.getElementById('tse-btn-step1-trigger');
        const step2Wrapper = document.getElementById('tse-step2-wrapper');
        const stepIndicator = document.getElementById('tse-step-indicator');
        const confirmBtn = document.getElementById('tse-btn-confirm-submit');
        const customOrderForm = document.getElementById('tse-custom-order-form');
        const thankYouView = document.getElementById('tse-thank-you-view');
        const errorAlert = document.getElementById('tse-order-error-alert');
        const inputName = document.getElementById('tse-input-name');
        const inputPhone = document.getElementById('tse-input-phone');
        const uploadCardWrap = document.getElementById('tse-upload-card-wrapper');
        const resetBtn = document.getElementById('tse-btn-reset-order');

        if (step1TriggerBtn && fileInput) {
            step1TriggerBtn.addEventListener('click', function(e) {
                e.preventDefault();
                if (!fileInput.files || fileInput.files.length === 0) {
                    fileInput.click();
                } else {
                    if (step2Wrapper) {
                        step2Wrapper.classList.remove('d-none');
                        step2Wrapper.scrollIntoView({ behavior: 'smooth', block: 'start' });
                        if (inputName) setTimeout(() => inputName.focus(), 300);
                    }
                }
            });
        }

        if (dropzone && fileInput) {
            if (chooseBtn) {
                chooseBtn.addEventListener('click', function(e) {
                    e.stopPropagation();
                    fileInput.click();
                });
            }

            dropzone.addEventListener('click', function() {
                if (idleView && !idleView.classList.contains('d-none')) {
                    fileInput.click();
                }
            });

            ['dragenter', 'dragover'].forEach(eventName => {
                dropzone.addEventListener(eventName, function(e) {
                    e.preventDefault();
                    e.stopPropagation();
                    dropzone.classList.add('drag-over');
                });
            });

            ['dragleave', 'drop'].forEach(eventName => {
                dropzone.addEventListener(eventName, function(e) {
                    e.preventDefault();
                    e.stopPropagation();
                    dropzone.classList.remove('drag-over');
                });
            });

            dropzone.addEventListener('drop', function(e) {
                if (e.dataTransfer && e.dataTransfer.files && e.dataTransfer.files.length) {
                    fileInput.files = e.dataTransfer.files;
                    handleFileSelection(e.dataTransfer.files[0]);
                }
            });

            fileInput.addEventListener('change', function() {
                if (fileInput.files && fileInput.files.length) {
                    handleFileSelection(fileInput.files[0]);
                }
            });

            if (removeBtn) {
                removeBtn.addEventListener('click', function(e) {
                    e.stopPropagation();
                    fileInput.value = '';
                    if (idleView) idleView.classList.remove('d-none');
                    if (selectedView) selectedView.classList.add('d-none');
                    if (fileThumb) fileThumb.src = '';

                    // Reset to Step 1 state
                    if (step2Wrapper) step2Wrapper.classList.add('d-none');
                    if (step1ActionBox) step1ActionBox.classList.remove('d-none');
                    if (stepIndicator) {
                        stepIndicator.textContent = 'Step 1 of 2';
                        stepIndicator.className = 'badge bg-primary-subtle text-primary border border-primary-subtle small px-2 py-1';
                    }
                });
            }

            function handleFileSelection(file) {
                if (!file) return;
                if (fileNameText) fileNameText.textContent = file.name;

                const reader = new FileReader();
                reader.onload = function(e) {
                    if (fileThumb) fileThumb.src = e.target.result;
                    if (idleView) idleView.classList.add('d-none');
                    if (selectedView) selectedView.classList.remove('d-none');

                    // Step 1 -> Step 2 progressive transition
                    if (step1ActionBox) step1ActionBox.classList.add('d-none');
                    if (step2Wrapper) {
                        step2Wrapper.classList.remove('d-none');
                        step2Wrapper.scrollIntoView({ behavior: 'smooth', block: 'start' });
                    }
                    if (stepIndicator) {
                        stepIndicator.textContent = 'Step 2 of 2: Consultation Details';
                        stepIndicator.className = 'badge bg-success-subtle text-success border border-success-subtle small px-2 py-1';
                    }
                    if (inputName) {
                        setTimeout(() => inputName.focus(), 350);
                    }
                };
                reader.readAsDataURL(file);
            }
        }

        // Direct Custom Order Submission Logic
        if (confirmBtn && customOrderForm) {
            confirmBtn.addEventListener('click', function(e) {
                e.preventDefault();
                if (errorAlert) {
                    errorAlert.classList.add('d-none');
                    errorAlert.textContent = '';
                }

                // Check Photo
                if (!fileInput || !fileInput.files || fileInput.files.length === 0) {
                    if (uploadCardWrap) {
                        uploadCardWrap.scrollIntoView({ behavior: 'smooth', block: 'center' });
                        uploadCardWrap.classList.add('tse-shake-error');
                        setTimeout(() => uploadCardWrap.classList.remove('tse-shake-error'), 1000);
                    }
                    if (errorAlert) {
                        errorAlert.textContent = 'Please attach your couple photo so we can personalize this statue.';
                        errorAlert.classList.remove('d-none');
                    }
                    return;
                }

                // Check Name
                if (!inputName || !inputName.value.trim()) {
                    if (inputName) inputName.focus();
                    if (errorAlert) {
                        errorAlert.textContent = 'Please enter your full name.';
                        errorAlert.classList.remove('d-none');
                    }
                    return;
                }

                // Check Phone
                if (!inputPhone || !inputPhone.value.trim() || inputPhone.value.trim().length < 6) {
                    if (inputPhone) inputPhone.focus();
                    if (errorAlert) {
                        errorAlert.textContent = 'Please enter a valid phone number so the owner can call you.';
                        errorAlert.classList.remove('d-none');
                    }
                    return;
                }

                // Set loading state on button
                const originalHtml = confirmBtn.innerHTML;
                confirmBtn.disabled = true;
                confirmBtn.innerHTML = '<span class="spinner-border spinner-border-sm me-2" role="status" aria-hidden="true"></span> Submitting your request...';

                // Helper to compress image client-side to prevent PHP upload limit drops
                const compressIfNeeded = (file) => {
                    return new Promise((resolve) => {
                        if (!file || !file.type.match(/image.*/)) {
                            resolve(file);
                            return;
                        }
                        const reader = new FileReader();
                        reader.onload = function(e) {
                            const img = new Image();
                            img.onload = function() {
                                const maxDim = 1920;
                                let w = img.width;
                                let h = img.height;
                                if (w > maxDim || h > maxDim) {
                                    if (w > h) {
                                        h = Math.round((h * maxDim) / w);
                                        w = maxDim;
                                    } else {
                                        w = Math.round((w * maxDim) / h);
                                        h = maxDim;
                                    }
                                }
                                const canvas = document.createElement('canvas');
                                canvas.width = w;
                                canvas.height = h;
                                const ctx = canvas.getContext('2d');
                                ctx.drawImage(img, 0, 0, w, h);
                                canvas.toBlob((blob) => {
                                    if (blob) {
                                        resolve(new File([blob], file.name.replace(/\.[^/.]+$/, ".jpg"), {
                                            type: 'image/jpeg',
                                            lastModified: Date.now()
                                        }));
                                    } else {
                                        resolve(file);
                                    }
                                }, 'image/jpeg', 0.85);
                            };
                            img.onerror = () => resolve(file);
                            img.src = e.target.result;
                        };
                        reader.onerror = () => resolve(file);
                        reader.readAsDataURL(file);
                    });
                };

                const rawFile = fileInput.files[0];
                compressIfNeeded(rawFile).then((processedFile) => {
                    const formData = new FormData(customOrderForm);
                    if (processedFile) {
                        formData.set('custom_photo', processedFile);
                    }

                    fetch('{{ route("public.ajax.custom-order-request", [], false) }}', {
                        method: 'POST',
                        body: formData,
                        headers: {
                            'X-Requested-With': 'XMLHttpRequest',
                            'X-CSRF-TOKEN': '{{ csrf_token() }}'
                        }
                    })
                    .then(response => {
                        if (!response.ok) {
                            return response.json().then(errData => {
                                throw new Error(errData.message || ('Server error: HTTP ' + response.status));
                            }).catch(() => {
                                throw new Error('Server error: HTTP ' + response.status);
                            });
                        }
                        return response.json();
                    })
                    .then(res => {
                        confirmBtn.disabled = false;
                        confirmBtn.innerHTML = originalHtml;

                        if (res.error) {
                            if (errorAlert) {
                                errorAlert.textContent = res.message || 'Error submitting request. Please try again.';
                                errorAlert.classList.remove('d-none');
                            }
                        } else {
                            // Success! Show thank you view
                            const data = res.data || {};
                            const tyName = document.getElementById('tse-ty-customer-name');
                            const tyCode = document.getElementById('tse-ty-order-code');
                            const tyPhone = document.getElementById('tse-ty-phone');

                            if (tyName) tyName.textContent = data.customer_name || inputName.value.trim();
                            if (tyCode) tyCode.textContent = data.order_code || '#NEW';
                            if (tyPhone) tyPhone.textContent = data.customer_phone || inputPhone.value.trim();

                            customOrderForm.classList.add('d-none');
                            if (thankYouView) {
                                thankYouView.classList.remove('d-none');
                                thankYouView.scrollIntoView({ behavior: 'smooth', block: 'center' });
                            }
                        }
                    })
                    .catch(err => {
                        confirmBtn.disabled = false;
                        confirmBtn.innerHTML = originalHtml;
                        if (errorAlert) {
                            errorAlert.textContent = err.message || 'Network error while submitting. Please check your connection and try again.';
                            errorAlert.classList.remove('d-none');
                        }
                        console.error('Order submission error:', err);
                    });
                });
            });

            if (resetBtn) {
                resetBtn.addEventListener('click', function() {
                    customOrderForm.reset();
                    if (fileInput) fileInput.value = '';
                    if (idleView) idleView.classList.remove('d-none');
                    if (selectedView) selectedView.classList.add('d-none');
                    if (fileThumb) fileThumb.src = '';
                    if (step2Wrapper) step2Wrapper.classList.add('d-none');
                    if (step1ActionBox) step1ActionBox.classList.remove('d-none');
                    if (stepIndicator) {
                        stepIndicator.textContent = 'Step 1 of 2';
                        stepIndicator.className = 'badge bg-primary-subtle text-primary border border-primary-subtle small px-2 py-1';
                    }
                    if (thankYouView) thankYouView.classList.add('d-none');
                    customOrderForm.classList.remove('d-none');
                    customOrderForm.scrollIntoView({ behavior: 'smooth', block: 'start' });
                });
            }
        }
    });
</script>
