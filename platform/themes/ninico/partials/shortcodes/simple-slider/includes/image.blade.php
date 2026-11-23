@php
    $isFirst = $isFirst ?? true;
    $desktopRel = $slider->image;
    $desktopPath = public_path('storage/' . $desktopRel);
    $v = file_exists($desktopPath) ? filemtime($desktopPath) : '1';
    $imageUrl = RvMedia::getImageUrl($desktopRel, null, false, RvMedia::getDefaultImage());

    $desktopWebpRel = preg_replace('/\.(jpe?g|png)$/i', '.webp', $desktopRel);
    $desktopWebpUrl = ($desktopWebpRel !== $desktopRel && file_exists(public_path('storage/' . $desktopWebpRel)))
        ? RvMedia::getImageUrl($desktopWebpRel, null, false, RvMedia::getDefaultImage())
        : null;

    // Auto-detect mobile portrait banner + WebP
    $mobileRel = preg_replace('/\.(jpe?g|png)$/i', '-mobile.jpg', $desktopRel);
    if ($mobileRel !== $desktopRel && file_exists(public_path('storage/' . $mobileRel))) {
        $mobileImgUrl = RvMedia::getImageUrl($mobileRel, null, false, RvMedia::getDefaultImage());
        $mobileV = filemtime(public_path('storage/' . $mobileRel));
    } else {
        $mobileImageMeta = $slider->getMetaData('mobile_image', true);
        $mobileRel = $mobileImageMeta ?: $desktopRel;
        $mobileImgUrl = $mobileImageMeta ? RvMedia::getImageUrl($mobileImageMeta, null, false, RvMedia::getDefaultImage()) : $imageUrl;
        $mobileV = $v;
    }

    $mobileWebpRel = preg_replace('/\.(jpe?g|png)$/i', '.webp', $mobileRel);
    $mobileWebpUrl = ($mobileWebpRel !== $mobileRel && file_exists(public_path('storage/' . $mobileWebpRel)))
        ? RvMedia::getImageUrl($mobileWebpRel, null, false, RvMedia::getDefaultImage())
        : null;
@endphp
<picture>
    @if ($desktopWebpUrl)
        <source srcset="{{ $desktopWebpUrl }}?v={{ $v }}" media="(min-width: 768px)" type="image/webp" />
    @endif
    <source srcset="{{ $imageUrl }}?v={{ $v }}" media="(min-width: 768px)" />
    @if ($mobileWebpUrl)
        <source srcset="{{ $mobileWebpUrl }}?v={{ $mobileV }}" media="(max-width: 767px)" type="image/webp" />
    @endif
    <source srcset="{{ $mobileImgUrl }}?v={{ $mobileV }}" media="(max-width: 767px)" />
    <img
        src="{{ $imageUrl }}?v={{ $v }}"
        loading="{{ $isFirst ? 'eager' : 'lazy' }}"
        alt="{{ $slider->title ?: 'Rainbow Statue Gallery' }}"
        @if ($isFirst) fetchpriority="high" @endif
        decoding="async"
    >
</picture>
