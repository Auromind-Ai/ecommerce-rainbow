<header>
    {!! Theme::partial('header-top') !!}
    <div class="mainmenuarea d-none d-xl-block">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-xl-3 col-lg-3">
                    <div class="d-flex align-items-center">
                        <button class="tp-menu-toggle header-hamburger-btn me-3" title="{{ __('Menu') }}" type="button">
                            <i class="fal fa-bars"></i>
                        </button>
                        {!! Theme::partial('logo') !!}
                    </div>
                </div>
                @if (is_plugin_active('ecommerce'))
                    <div class="col-xl-9 col-lg-9">
                        <div class="header-meta d-flex align-items-center justify-content-between">
                            <div class="mainmenu__search w-100 me-4">
                                <form action="{{ route('public.products') }}" class="position-relative form--quick-search" data-url="{{ route('public.ajax.search-products') }}" method="GET">
                                    <div class="mainmenu__search-bar p-relative">
                                        <button class="mainmenu__search-icon" title="search"><i class="fal fa-search"></i></button>
                                        <input type="text" name="q" class="input-search-product" placeholder="{{ __('Search products...') }}" value="{{ BaseHelper::stringify(request()->query('q')) }}" autocomplete="off">
                                    </div>
                                    <div class="panel--search-result"></div>
                                </form>
                            </div>
                            {!! Theme::partial('header-meta') !!}
                        </div>
                    </div>
                @endif
            </div>
        </div>
    </div>
</header>

{!! Theme::partial('navbar') !!}
