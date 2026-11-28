<section class="tse-category-section">
    <div class="container">
        @php
            $title = $shortcode->title ?: 'Shop by occasion';
        @endphp
        <div class="row align-items-end mb-25">
            <div class="col-7 col-sm-8 col-md-9">
                <div class="tse-cat-section-header">
                    <h3 class="tse-cat-section-title mb-0">{!! BaseHelper::clean($title) !!}</h3>
                    <span class="tse-cat-title-accent"></span>
                </div>
            </div>
            <div class="col-5 col-sm-4 col-md-3 text-end">
                <a href="{{ route('public.products') }}" class="tse-cat-view-all">
                    <span>View all</span> <i class="fal fa-arrow-right"></i>
                </a>
            </div>
        </div>

        <div class="row g-2 g-sm-3 g-md-4">
            @foreach($categories as $category)
                @php
                    $catImgRel = $category->image;
                    $catImgPath = $catImgRel ? public_path('storage/' . $catImgRel) : '';
                    $catV = ($catImgPath && file_exists($catImgPath)) ? filemtime($catImgPath) : '1';
                    $catImgUrl = RvMedia::getImageUrl($catImgRel, default: RvMedia::getDefaultImage());
                    $catWebpRel = $catImgRel ? preg_replace('/\.(jpe?g|png)$/i', '.webp', $catImgRel) : '';
                    $catWebpUrl = ($catWebpRel && $catWebpRel !== $catImgRel && file_exists(public_path('storage/' . $catWebpRel)))
                        ? RvMedia::getImageUrl($catWebpRel, default: RvMedia::getDefaultImage())
                        : null;
                @endphp
                <div class="col-6 col-md-6 col-lg-3">
                    <div class="tse-cat-card tse-3d-card tse-3d-tilt">
                        <span class="tse-cat-3d-badge"><i class="fas fa-cube"></i> 3D Custom</span>
                        <a href="{{ $category->url }}" class="tse-cat-card-link">
                            <div class="tse-cat-card-thumb">
                                <picture>
                                    @if ($catWebpUrl)
                                        <source srcset="{{ $catWebpUrl }}?v={{ $catV }}" type="image/webp">
                                    @endif
                                    <img src="{{ $catImgUrl }}?v={{ $catV }}" alt="{{ $category->name }}" loading="lazy" decoding="async">
                                </picture>
                            </div>
                            <div class="tse-cat-card-body">
                                <h4 class="tse-cat-card-title">{{ $category->name }}</h4>
                                <span class="tse-cat-card-btn">
                                    Explore <i class="fal fa-arrow-right"></i>
                                </span>
                            </div>
                        </a>
                    </div>
                </div>
            @endforeach
        </div>
    </div>
</section>

{!! Theme::partial('home-3d-studio') !!}
{!! Theme::partial('home-3d-process') !!}
