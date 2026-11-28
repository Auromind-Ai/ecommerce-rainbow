@php
    $currentUrl = rtrim(request()->url(), '/');
    $homeUrl = rtrim(BaseHelper::getHomepageUrl(), '/');
    $isHome = $currentUrl === $homeUrl || request()->routeIs('public.index');
    $isCategories = request()->is('products*') || request()->is('product-categories*');
    $isCart = request()->is('cart*');
    $isWishlist = request()->is('wishlist*');
    $isAccount = request()->is('customer*') || request()->is('login') || request()->is('register');
    $showMenuLabel = theme_option('bottom_mobile_menu_show_label', 'yes') === 'yes';
@endphp

<nav class="navigation-bar tse-floating-nav" aria-label="{{ __('Mobile Navigation') }}">
    <ul class="navigation-bar__list">
        <li class="@if ($isHome) is-active @endif">
            <a href="{{ BaseHelper::getHomepageUrl() }}" class="navigation-bar__item" title="{{ __('Home') }}">
                <span class="navigation-bar__icon-wrap">
                    <i class="{{ $isHome ? 'fas' : 'far' }} fa-home"></i>
                </span>
                @if($showMenuLabel)
                    <span class="navigation-bar__label">{{ __('Home') }}</span>
                @endif
            </a>
        </li>
        <li class="@if ($isCategories) is-active @endif">
            <a role="button" href="javascript:void(0)" class="tp-categories-sidebar-toggle navigation-bar__item" title="{{ __('Categories') }}">
                <span class="navigation-bar__icon-wrap">
                    <i class="{{ $isCategories ? 'fas' : 'far' }} fa-th-large"></i>
                </span>
                @if($showMenuLabel)
                    <span class="navigation-bar__label">{{ __('Categories') }}</span>
                @endif
            </a>
        </li>
        @if(EcommerceHelper::isWishlistEnabled())
            <li class="@if ($isWishlist) is-active @endif">
                <a href="{{ route('public.wishlist') }}" class="navigation-bar__item" title="{{ __('Wishlist') }}">
                    <span class="navigation-bar__icon-wrap header-cart p-relative">
                        <i class="{{ $isWishlist ? 'fas' : 'far' }} fa-heart"></i>
                        <span class="tp-product-count tp-product-wishlist-count text-white">{{ Cart::instance('wishlist')->count() }}</span>
                    </span>
                    @if($showMenuLabel)
                        <span class="navigation-bar__label">{{ __('Wishlist') }}</span>
                    @endif
                </a>
            </li>
        @endif
    </ul>
</nav>
