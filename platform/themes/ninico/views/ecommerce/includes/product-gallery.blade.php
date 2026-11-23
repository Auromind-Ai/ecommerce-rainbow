@php
    $productImages = !empty($productImages) && is_array($productImages) ? array_filter($productImages) : [];
    if (empty($productImages)) {
        if (!empty($product->images) && is_array($product->images)) {
            $productImages = array_filter($product->images);
        }
    }
    if (empty($productImages) && $product->image) {
        $productImages = [$product->image];
    }
    if ($product->image && !in_array($product->image, $productImages)) {
        array_unshift($productImages, $product->image);
    }
    if (empty($productImages)) {
        $productImages = [RvMedia::getDefaultImage()];
    }
    $mainImage = RvMedia::getImageUrl($productImages[0] ?? $product->image);
@endphp

<div class="tse-gallery-container">
    <div class="tse-gallery-stage">
        <img
            id="tse-main-stage-img"
            src="{{ $mainImage }}"
            alt="{{ $product->name }}"
            loading="eager"
            fetchpriority="high"
        >
    </div>
    @if(count($productImages) > 1)
        <div class="tse-gallery-thumbs-row">
            @foreach ($productImages as $index => $img)
                @php
                    $fullUrl = RvMedia::getImageUrl($img);
                    $thumbUrl = RvMedia::getImageUrl($img, 'thumb');
                    $thumbPath = parse_url($thumbUrl, PHP_URL_PATH) ?: '';
                    if (!$thumbPath || !file_exists(public_path(ltrim($thumbPath, '/')))) {
                        $thumbUrl = $fullUrl;
                    }
                @endphp
                <div class="tse-thumb-box {{ $index === 0 ? 'active' : '' }}" data-full-src="{{ $fullUrl }}">
                    <img src="{{ $thumbUrl }}" alt="{{ $product->name }} thumb {{ $index + 1 }}" loading="lazy" decoding="async">
                </div>
            @endforeach
        </div>
    @endif
</div>

<script>
    document.addEventListener('DOMContentLoaded', function() {
        const stageImg = document.getElementById('tse-main-stage-img');
        const thumbs = document.querySelectorAll('.tse-thumb-box');
        if (!stageImg || !thumbs.length) return;

        thumbs.forEach(function(thumb) {
            thumb.addEventListener('click', function() {
                const targetSrc = this.getAttribute('data-full-src');
                if (!targetSrc || stageImg.getAttribute('src') === targetSrc) return;
                thumbs.forEach(function(t) { t.classList.remove('active'); });
                this.classList.add('active');
                stageImg.style.opacity = '0.5';
                stageImg.onload = function() {
                    stageImg.style.opacity = '1';
                };
                stageImg.src = targetSrc;
                if (stageImg.complete) {
                    stageImg.style.opacity = '1';
                }
            });
        });
    });
</script>
