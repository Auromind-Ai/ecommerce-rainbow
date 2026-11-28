<div class="container-fluid px-0">
    <div class="row justify-content-center g-0">
        <div class="col-12">
            <div class="tp-slider-area p-relative tse-rounded-slider-area">
                <div class="swiper-container tse-hero-swiper p-relative">
                    <div class="swiper-wrapper">
                        @php
                            $sliderItems = (count($sliders) == 2) ? $sliders->concat($sliders) : $sliders;
                        @endphp
                        @foreach($sliderItems as $slider)
                            <div class="swiper-slide">
                                <div class="tp-slide-item tse-banner-slide-item">
                                    <a href="{{ $slider->link ?: route('public.products') }}" class="d-block w-100">
                                        <div class="tp-slide-item__img tse-banner-img-wrap">
                                            @include(Theme::getThemeNamespace('partials.shortcodes.simple-slider.includes.image'), ['slider' => $slider, 'isFirst' => $loop->first])
                                        </div>
                                    </a>
                                    @if($slider->title || $slider->description)
                                        <div class="tp-slide-item__content">
                                            @if($slider->description)
                                                <h4 class="tp-slide-item__sub-title">{!! BaseHelper::clean($slider->description) !!}</h4>
                                            @endif
                                            @if($slider->title)
                                                <h3 class="tp-slide-item__title mb-25">{!! BaseHelper::clean($slider->title) !!}</h3>
                                            @endif
                                            @if(($actionLabel = $slider->getMetaData('action_label', true)) && $slider->link)
                                                <a class="tp-slide-item__slide-btn tp-btn" href="{{ $slider->link }}">
                                                    {{ $actionLabel }} <i class="fal fa-long-arrow-right"></i>
                                                </a>
                                            @endif
                                        </div>
                                    @endif
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
                @if(count($sliders) > 1)
                    <div class="tse-hero-pagination text-center mt-3"></div>
                @endif
            </div>
        </div>
    </div>
</div>

<script>
    (function () {
        function initHeroSwiper() {
            if (typeof Swiper === 'undefined') {
                setTimeout(initHeroSwiper, 100);
                return;
            }
            var el = document.querySelector('.tse-hero-swiper');
            if (!el) return;

            if (el.swiper) {
                try { el.swiper.destroy(true, true); } catch(e){}
            }

            var isMobile = window.innerWidth < 768;

            var swiperOptions = {
                loop: true,
                loopedSlides: 4,
                loopAdditionalSlides: 2,
                speed: 650,
                grabCursor: true,
                autoplay: {
                    delay: 3500,
                    disableOnInteraction: false,
                    pauseOnMouseEnter: true
                },
                pagination: {
                    el: '.tse-hero-pagination',
                    clickable: true
                }
            };

            if (isMobile) {
                swiperOptions.slidesPerView = 1.24;
                swiperOptions.centeredSlides = true;
                swiperOptions.spaceBetween = 12;
                swiperOptions.effect = 'slide';
            } else {
                swiperOptions.slidesPerView = 1;
                swiperOptions.centeredSlides = false;
                swiperOptions.spaceBetween = 0;
                swiperOptions.effect = 'fade';
                swiperOptions.fadeEffect = { crossFade: true };
            }

            var heroSwiper = new Swiper('.tse-hero-swiper', swiperOptions);
        }

        var lastIsMobile = window.innerWidth < 768;

        if (document.readyState === 'loading') {
            document.addEventListener('DOMContentLoaded', initHeroSwiper);
        } else {
            initHeroSwiper();
        }

        window.addEventListener('resize', function() {
            var currentIsMobile = window.innerWidth < 768;
            if (currentIsMobile === lastIsMobile) return;
            lastIsMobile = currentIsMobile;
            clearTimeout(window.__heroSwiperResizeTimer);
            window.__heroSwiperResizeTimer = setTimeout(initHeroSwiper, 200);
        });
    })();
</script>
