@php
    $products = $products ?? get_products([
        'take' => (int) ($shortcode->limit ?: 8),
        'order_by' => ['order' => 'asc', 'created_at' => 'desc']
    ] + EcommerceHelper::withReviewsParams());
@endphp

<section class="tse-products-showcase-section" id="products-showcase">
    <!-- Corner Ambient Accents matching mockup -->
    <div class="tse-prod-ambient tse-ambient-top-left"></div>
    <div class="tse-prod-ambient tse-ambient-top-right"></div>
    <div class="tse-prod-ambient tse-ambient-bottom-right"></div>

    <div class="container position-relative" style="z-index: 2;">
        <!-- Section Header -->
        <div class="row justify-content-center text-center mb-35">
            <div class="col-lg-9 col-md-11">
                <!-- Pill Badge -->
                <div class="tse-prod-pill-badge mb-15">
                    <span>ORDER OR ENQUIRE</span>
                </div>

                <!-- Main Title -->
                <h2 class="tse-prod-heading">
                    {!! BaseHelper::clean($shortcode->title ?: 'Wedding & Event <span class="tse-text-blue">Couple Statue</span>') !!}
                </h2>

                <!-- Subtitle -->
                <p class="tse-prod-subheading">
                    Turn your special moments into a timeless miniature
                </p>

                <!-- Gold Accent Line -->
                <div class="tse-prod-accent-bar"></div>
            </div>
        </div>

        <!-- Product Cards Grid -->
        <div class="row g-3 g-xl-4 align-items-stretch">
            @foreach($products as $product)
                <div class="col-12 col-sm-6 col-lg-3">
                    @include(Theme::getThemeNamespace('views.ecommerce.includes.product-item'))
                </div>
            @endforeach
        </div>
    </div>
</section>

{!! Theme::partial('home-custom-banner') !!}

{!! Theme::partial('home-faq') !!}
