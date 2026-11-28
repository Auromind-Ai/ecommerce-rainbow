@if (is_plugin_active('ecommerce'))
    <div @class(['header-meta d-flex align-items-center', $class ?? null])>
        <div class="header-meta__social d-flex align-items-center ml-25">
            @if(EcommerceHelper::isWishlistEnabled())
                <a href="{{ route('public.wishlist') }}" class="header-cart p-relative" title="{{ __('Wishlist') }}">
                    <i class="fal fa-heart"></i>
                    <span class="tp-product-wishlist-count">{{ Cart::instance('wishlist')->count() }}</span>
                </a>
            @endif
        </div>
    </div>
@endif
