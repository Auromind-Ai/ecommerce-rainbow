@if (is_plugin_active('ecommerce'))
    <div @class(['header-meta d-flex align-items-center flex-shrink-0', $class ?? null])>
        <div class="header-meta__social d-flex align-items-center gap-2 gap-xl-3">
            @if(EcommerceHelper::isCartEnabled())
                <button class="header-cart p-relative tp-cart-toggle" title="{{ __('Cart') }}">
                    <i class="fal fa-shopping-bag"></i>
                    <span class="tp-product-count">{{ Cart::instance('cart')->count() }}</span>
                </button>
            @endif
            @if(EcommerceHelper::isCompareEnabled())
                <a href="{{ route('public.compare') }}" class="header-cart p-relative">
                    <i class="fal fa-exchange"></i>
                    <span class="tp-product-compare-count">{{ Cart::instance('compare')->count() }}</span>
                </a>
            @endif
            @if(EcommerceHelper::isWishlistEnabled())
                <a href="{{ route('public.wishlist') }}" class="header-cart p-relative">
                    <i class="fal fa-heart"></i>
                    <span class="tp-product-wishlist-count">{{ Cart::instance('wishlist')->count() }}</span>
                </a>
            @endif
            @auth('customer')
                <a href="{{ route('customer.overview') }}" title="{{ auth('customer')->user()->name }}"><i class="fal fa-user"></i></a>
            @else
                <a href="{{ route('customer.login') }}" title="{{ __('Login') }}"><i class="fal fa-user"></i></a>
            @endauth
        </div>
    </div>
@endif
