@if(is_plugin_active('ecommerce'))
    <div class="header-search-bar">
        <form action="{{ route('public.products') }}" class="position-relative form--quick-search" data-url="{{ route('public.ajax.search-products') }}" method="GET">
            <div class="search-info p-relative">
                @if($hasCategorySelect = (theme_option('display_product_categories_select_on_header', 'yes') === 'yes'))
                    <div class="product-category-label">
                        <label class="form-label text text-truncate d-inline-block mb-0" for="product-category-select">{{ __('All Categories') }}</label>
                        <i class="fal fa-chevron-down ms-2 flex-shrink-0"></i>
                    </div>
                    <select
                        id="product-category-select"
                        class="product-category-select"
                        name="categories[]"
                        aria-label="{{ __('All Categories') }}"
                    >
                        <option value="0">{{ __('All Categories') }}</option>
                        {!! ProductCategoryHelper::renderProductCategoriesSelect() !!}
                    </select>
                @endif
                <input type="text" name="q" @class(['input-search-product', 'has-category-select' => $hasCategorySelect]) placeholder="{{ __('Search products...') }}" value="{{ BaseHelper::stringify(request()->query('q')) }}" autocomplete="off">
                <button class="header-search-icon" title="search">
                    <i class="fal fa-search"></i>
                </button>
            </div>
            <div class="panel--search-result"></div>
        </form>
    </div>
@endif
