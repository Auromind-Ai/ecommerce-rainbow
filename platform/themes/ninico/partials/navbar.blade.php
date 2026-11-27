@if(theme_option('sticky_header_enabled', 'yes') == 'yes')
    <div id="header-sticky" class="logo-area tp-sticky-one mainmenu-5">
        {!! Theme::partial('header-middle') !!}
    </div>
@endif

<div id="header-tab-sticky" class="tp-md-lg-header d-none d-md-block d-xl-none py-3">
    <div class="container">
        <div class="d-flex align-items-center justify-content-between gap-3">
            <div class="d-flex align-items-center flex-shrink-0">
                <button class="tp-menu-toggle header-hamburger-btn me-3" title="{{ __('Menu') }}" type="button">
                    <i class="fal fa-bars"></i>
                </button>
                {!! Theme::partial('logo') !!}
            </div>
            @if (is_plugin_active('ecommerce'))
                <div class="header-meta-info d-flex align-items-center justify-content-end flex-grow-1 gap-3 min-w-0">
                    {!! Theme::get('headerSearchBar') !!}
                    {!! Theme::partial('header-meta') !!}
                </div>
            @endif
        </div>
    </div>
</div>

<div @if(theme_option('sticky_header_mobile_enabled', 'yes') == 'yes') id="header-mob-sticky" @endif @class(['tp-md-lg-header d-md-none py-2', $headerMobileStickyClass ?? null])>
    <div class="container">
        <div class="d-flex align-items-center justify-content-between gap-2">
            <div class="d-flex align-items-center flex-shrink-0">
                <button class="tp-menu-toggle header-hamburger-btn" title="{{ __('Menu') }}" type="button">
                    <i class="fal fa-bars"></i>
                </button>
            </div>
            @if ($logo = theme_option('logo'))
                <div class="text-center flex-grow-1 min-w-0 px-2">
                    {!! Theme::partial('logo') !!}
                </div>
            @endif
            @if (is_plugin_active('ecommerce'))
                <div class="header-meta d-flex align-items-center flex-shrink-0 gap-2">
                    <button class="header-cart p-relative tp-search-sidebar-toggle" title="{{ __('Search') }}" type="button">
                        <i class="fal fa-search"></i>
                    </button>
                    @if(EcommerceHelper::isCartEnabled())
                        <button class="header-cart p-relative tp-cart-toggle" title="{{ __('Cart') }}" type="button">
                            <i class="fal fa-shopping-bag"></i>
                            <span class="tp-product-count">{{ Cart::instance('cart')->count() }}</span>
                        </button>
                    @endif
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
                @if (! empty($categories))
                    @foreach ($categories->where('parent_id', 0)->take(8) as $category)
                        <li>
                            <a href="{{ $category->url }}">
                                <i class="fal fa-sparkles"></i>
                                <span>{{ $category->name }}</span>
                            </a>
                        </li>
                    @endforeach
                @endif
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
                <span class="tse-drawer-subtitle">{{ __('Customer Account') }}</span>
                <div class="tse-drawer-action-links">
                    @auth('customer')
                        <a href="{{ route('customer.overview') }}" class="tse-drawer-action-item">
                            <i class="fal fa-user-circle"></i>
                            <span>{{ auth('customer')->user()->name }}</span>
                        </a>
                    @else
                        <a href="{{ route('customer.login') }}" class="tse-drawer-action-item">
                            <i class="fal fa-user"></i>
                            <span>{{ __('Login / Register') }}</span>
                        </a>
                    @endauth

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

                    @if(EcommerceHelper::isCompareEnabled())
                        <a href="{{ route('public.compare') }}" class="tse-drawer-action-item">
                            <i class="fal fa-exchange"></i>
                            <span>{{ __('Compare Products') }} ({{ Cart::instance('compare')->count() }})</span>
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
