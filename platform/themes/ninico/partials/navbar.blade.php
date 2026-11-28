@if(theme_option('sticky_header_enabled', 'yes') == 'yes')
    <div id="header-sticky" class="logo-area tp-sticky-one mainmenu-5">
        {!! Theme::partial('header-middle') !!}
    </div>
@endif

<div id="header-tab-sticky" class="tp-md-lg-header d-none d-md-block d-xl-none pt-30 pb-30">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-3 col-md-4 d-flex align-items-center">
                <div class="flex-auto header-canvas">
                    <button class="tp-menu-toggle" title="open">
                        <i class="far fa-bars"></i>
                    </button>
                </div>
                {!! Theme::partial('logo') !!}
            </div>
            @if (is_plugin_active('ecommerce'))
                <div class="col-lg-9 col-md-8">
                    <div class="header-meta-info d-flex align-items-center justify-content-between">
                        {!! Theme::get('headerSearchBar') !!}
                        <div class="header-meta__social d-flex align-items-center ml-25">
                            @if(EcommerceHelper::isWishlistEnabled())
                                <a href="{{ route('public.wishlist') }}" class="header-cart p-relative" title="{{ __('Wishlist') }}">
                                    <i class="fal fa-heart"></i>
                                    <span class="tp-product-wishlist-count">{{ Cart::instance('wishlist')->count() }}</span>
                                </a>
                            @endif
                        </div>
                    </div>
                </div>
            @endif
        </div>
    </div>
</div>

<div @if(theme_option('sticky_header_mobile_enabled', 'yes') == 'yes') id="header-mob-sticky" @endif @class(['tp-md-lg-header d-md-none pt-20 pb-20', $headerMobileStickyClass ?? null])>
    <div class="container">
        <div class="row align-items-center">
            <div class="col-3 d-flex align-items-center">
                <div class="flex-auto header-canvas">
                    <button class="tp-menu-toggle" title="open">
                        <i class="far fa-bars"></i>
                    </button>
                </div>
            </div>
            @if ($logo = theme_option('logo'))
                <div class="col-6">
                    <div class="text-center">
                        {!! Theme::partial('logo') !!}
                    </div>
                </div>
            @endif
            @if (is_plugin_active('ecommerce'))
                <div class="col-3">
                    <div class="header-meta-info d-flex align-items-center justify-content-end ml-25">
                        <button class="header-cart p-relative tp-search-sidebar-toggle" title="search">
                            <i class="fal fa-search"></i>
                        </button>
                    </div>
                </div>
            @endif
        </div>
    </div>
</div>

<div class="tpsideinfo tse-side-drawer">
    <div class="tse-drawer-header">
        <div class="tse-drawer-logo">
            {!! Theme::partial('logo') !!}
        </div>
        <button class="tse-drawer-close tpsideinfo__close" type="button" aria-label="{{ __('Close menu') }}">
            <i class="fal fa-times"></i>
        </button>
    </div>

    @if (is_plugin_active('ecommerce'))
        <div class="tse-drawer-search">
            <form action="{{ route('public.products') }}" class="position-relative form--quick-search" data-url="{{ route('public.ajax.search-products') }}" method="GET">
                <input type="text" name="q" class="input-search-product tse-drawer-search-input" placeholder="{{ __('Search products...') }}" value="{{ BaseHelper::stringify(request()->query('q')) }}" autocomplete="off">
                <button type="submit" class="tse-drawer-search-btn" title="{{ __('Search') }}"><i class="fal fa-search"></i></button>
                <div class="panel--search-result"></div>
            </form>
        </div>
    @endif

    <div class="tse-drawer-body">
        <div class="tse-drawer-section">
            <span class="tse-drawer-subtitle">{{ __('Explore') }}</span>
            <ul class="tse-drawer-nav-list">
                <li>
                    <a href="{{ url('/') }}">
                        <i class="fal fa-home-alt"></i>
                        <span>{{ __('Home') }}</span>
                    </a>
                </li>
                <li>
                    <a href="{{ route('public.products') }}">
                        <i class="fal fa-bags-shopping"></i>
                        <span>{{ __('Shop All') }}</span>
                    </a>
                </li>
                <li>
                    <a href="{{ url('/product-categories/just-for-her') }}">
                        <i class="fal fa-heart"></i>
                        <span>{{ __('Just For Her') }}</span>
                    </a>
                </li>
                <li>
                    <a href="{{ url('/product-categories/independent-her') }}">
                        <i class="fal fa-sparkles"></i>
                        <span>{{ __('Independent Her') }}</span>
                    </a>
                </li>
                <li>
                    <a href="{{ url('/product-categories/premium-edition') }}">
                        <i class="fal fa-crown"></i>
                        <span>{{ __('Premium Edition') }}</span>
                    </a>
                </li>
                <li>
                    <a href="{{ url('/about') }}">
                        <i class="fal fa-info-circle"></i>
                        <span>{{ __('About Us') }}</span>
                    </a>
                </li>
                <li>
                    <a href="{{ url('/contact') }}">
                        <i class="fal fa-comment-alt-lines"></i>
                        <span>{{ __('Contact Us') }}</span>
                    </a>
                </li>
            </ul>
        </div>

        @if (is_plugin_active('ecommerce'))
            <div class="tse-drawer-section tse-drawer-customer-section">
                <span class="tse-drawer-subtitle">{{ __('Quick Links') }}</span>
                <div class="tse-drawer-action-links">
                    @if (EcommerceHelper::isOrderTrackingEnabled())
                        <a href="{{ route('public.orders.tracking') }}" class="tse-drawer-action-item">
                            <i class="fal fa-truck"></i>
                            <span>{{ __('Track Your Order') }}</span>
                        </a>
                    @endif

                    @if(EcommerceHelper::isWishlistEnabled())
                        <a href="{{ route('public.wishlist') }}" class="tse-drawer-action-item">
                            <i class="fal fa-heart"></i>
                            <span>{{ __('My Wishlist') }}</span>
                        </a>
                    @endif
                </div>
            </div>
        @endif

        <div class="tse-drawer-footer">
            <p class="tse-drawer-tagline">Rainbow Statue Gallery</p>
            <span class="tse-drawer-subtagline">Sacred Art & Divine Sculptures</span>
        </div>
    </div>
</div>

<div class="body-overlay"></div>

<div class="tpcartinfo tp-cart-info-area p-relative">
    <button class="tpcart__close" title="close">
        <i class="fal fa-times"></i>
    </button>
    <div class="tpcart">
        <h4 class="tpcart__title">{{ __('Your Cart') }}</h4>
        <div class="tpcart__product">
            @include(Theme::getThemeNamespace('views.ecommerce.includes.mini-cart'))
        </div>
        @if ($cartFooterDescription = theme_option('cart_footer_description'))
            <div class="text-center tpcart__free-shipping">
                <span>{!! BaseHelper::clean($cartFooterDescription) !!}</span>
            </div>
        @endif
    </div>
</div>

<div class="cartbody-overlay"></div>
