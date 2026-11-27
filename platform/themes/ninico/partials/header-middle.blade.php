<div class="container">
    <div class="d-flex align-items-center justify-content-between gap-3 gap-xl-4">
        <div class="d-flex align-items-center flex-shrink-0">
            <button class="tp-menu-toggle header-hamburger-btn me-3" title="{{ __('Menu') }}" type="button">
                <i class="fal fa-bars"></i>
            </button>
            {!! Theme::partial('logo') !!}
        </div>
        @if(is_plugin_active('ecommerce'))
            <div class="header-meta-info d-flex align-items-center justify-content-end flex-grow-1 gap-3 gap-xl-4 min-w-0">
                {!! Theme::get('headerSearchBar') !!}
                {!! Theme::partial('header-meta') !!}
            </div>
        @endif
    </div>
</div>
