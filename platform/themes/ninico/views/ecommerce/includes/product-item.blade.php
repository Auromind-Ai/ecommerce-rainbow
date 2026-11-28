<div class="tse-prod-card">
    <div class="tse-prod-thumb-wrap">
        <!-- Dynamic Product Labels from Admin Panel -->
        <div class="tse-prod-badge-list">
            @if ($product->isOutOfStock())
                <span class="tse-prod-badge tse-badge-red">{{ __('Out of stock') }}</span>
            @elseif ($product->isOnSale() && $product->sale_percent)
                <span class="tse-prod-badge tse-badge-green">{{ __(':percent% off', ['percent' => $product->sale_percent]) }}</span>
            @elseif ($product->productLabels->isNotEmpty())
                @foreach ($product->productLabels as $label)
                    <span class="tse-prod-badge" style="background-color: {{ $label->color ?: '#2563EB' }};">
                        @if (stripos($label->name, 'Best') !== false)
                            <i class="fas fa-star"></i>
                        @elseif (stripos($label->name, 'Trend') !== false)
                            <i class="fas fa-chart-line"></i>
                        @elseif (stripos($label->name, 'Custom') !== false)
                            <i class="fas fa-edit"></i>
                        @elseif (stripos($label->name, 'Premium') !== false)
                            <i class="fas fa-gem"></i>
                        @endif
                        {{ $label->name }}
                    </span>
                @endforeach
            @endif
        </div>

        <!-- Wishlist Button -->
        @if (EcommerceHelper::isWishlistEnabled())
            <a class="wishlist add-to-wishlist tse-prod-wishlist-btn" href="{{ route('public.wishlist.add', $product->getKey()) }}" title="{{ __('Add to Wishlist') }}">
                <i class="fal fa-heart"></i>
            </a>
        @endif

        <!-- Product Image Link -->
        <a href="{{ $product->url }}" class="tse-prod-img-link">
            <img src="{{ RvMedia::getImageUrl($product->image, default: RvMedia::getDefaultImage()) }}" alt="{{ $product->name }}" loading="lazy" class="tse-prod-card-img">
        </a>
    </div>

    <div class="tse-prod-card-body">
        <!-- 5 Star Rating Row -->
        <div class="tse-prod-rating-strip">
            <div class="tse-prod-stars">
                @for ($i = 0; $i < 5; $i++)
                    <i class="fas fa-star"></i>
                @endfor
            </div>
            <span class="tse-prod-rating-num">({{ $product->reviews_count ?: 100 }})</span>
        </div>

        <!-- Product Title -->
        <h4 class="tse-prod-card-title text-truncate">
            <a href="{{ $product->url }}" title="{{ $product->name }}">{{ $product->name }}</a>
        </h4>

        <!-- Price: 100% Dynamic from Admin Panel (No Hardcoded Price) -->
        <div class="tse-prod-price-box">
            <span class="tse-price-from-label">{{ __('From') }}</span>
            <span class="tse-price-amount">{{ format_price($product->front_sale_price_with_taxes) }}</span>
            @if ($product->isOnSale())
                <span class="tse-price-old-amount">{{ format_price($product->price_with_taxes) }}</span>
            @endif
        </div>

        <!-- Action Button: Order on WhatsApp -->
        <div class="tse-prod-card-actions">
            @php
                $waText = "Hi! I want to order/enquire about the " . $product->name . " (Price: " . format_price($product->front_sale_price_with_taxes) . "). Please share details!";
            @endphp
            <a href="https://wa.me/91904777229?text={{ urlencode($waText) }}" target="_blank" rel="noopener noreferrer" class="tse-btn-wa-order tse-btn-wa-full">
                <i class="fab fa-whatsapp"></i>
                <span>Order on WhatsApp</span>
                <i class="fal fa-chevron-right tse-btn-wa-arrow"></i>
            </a>
        </div>
    </div>
</div>
