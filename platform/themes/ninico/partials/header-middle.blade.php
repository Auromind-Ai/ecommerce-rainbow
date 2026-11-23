<div class="container">
    <div class="row align-items-center">
        <div class="col-xl-3 col-lg-3 col-md-4">
            <div class="d-flex align-items-center">
                <button class="tp-menu-toggle header-hamburger-btn me-3" title="{{ __('Menu') }}" type="button">
                    <i class="fal fa-bars"></i>
                </button>
                {!! Theme::partial('logo') !!}
            </div>
        </div>
        @if(is_plugin_active('ecommerce'))
            <div class="col-xl-9 col-lg-9 col-md-8">
                <div class="header-meta-info d-flex align-items-center justify-content-between">
                    {!! Theme::get('headerSearchBar') !!}
                    {!! Theme::partial('header-meta') !!}
                </div>
            </div>
        @endif
    </div>
</div>
