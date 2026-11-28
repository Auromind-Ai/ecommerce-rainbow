<section class="tse-3d-showcase-section">
    <div class="container">
        <!-- Section Header -->
        <div class="row justify-content-center text-center mb-35">
            <div class="col-lg-8 col-md-10">
                <div class="tse-3d-pill-badge mb-12">
                    <i class="fas fa-sparkles"></i> REAL CLIENT RESULTS
                </div>
                <h2 class="tse-3d-section-title">
                    See the <span>3D Transformation</span>
                </h2>
                <p class="tse-3d-section-desc">
                    Compare the original 2D smartphone photo against our final 3D sculpted figurine. Toggle between views to see the uncanny fidelity.
                </p>
            </div>
        </div>

        <div class="row justify-content-center">
            <div class="col-lg-10 col-12">
                <div class="tse-ba-card">
                    <div class="row g-0 align-items-center">
                        <!-- Before & After Interactive Container -->
                        <div class="col-md-7 col-12">
                            <div class="tse-ba-viewer-wrap" id="tse-ba-viewer">
                                <!-- Image Frame -->
                                <div class="tse-ba-frame">
                                    <img id="tse-ba-img" src="{{ Theme::asset()->url('img/3d/after-couple-3d-statue.png') }}" alt="Handcrafted 3D Statue Figurine" class="tse-ba-display-img">
                                    <div class="tse-ba-badge" id="tse-ba-mode-badge">
                                        <i class="fas fa-cube"></i> After: 3D Sculpted Figurine
                                    </div>
                                </div>

                                <!-- Toggle Button Pill -->
                                <div class="tse-ba-toggle-strip">
                                    <button type="button" class="tse-ba-toggle-btn" id="tse-ba-btn-before">
                                        <i class="fas fa-image"></i> Original 2D Photo
                                    </button>
                                    <button type="button" class="tse-ba-toggle-btn active" id="tse-ba-btn-after">
                                        <i class="fas fa-cube"></i> Handcrafted 3D Statue
                                    </button>
                                </div>
                            </div>
                        </div>

                        <!-- Testimonial & Order Column -->
                        <div class="col-md-5 col-12">
                            <div class="tse-ba-testimonial">
                                <div class="tse-ba-stars">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                </div>
                                <blockquote class="tse-ba-quote">
                                    "When we unboxed the statue for our 5th anniversary, we were speechless! Every expression, clothes fold, and hair curve matches our photo in real 3D miniature!"
                                </blockquote>
                                <div class="tse-ba-author">
                                    <strong>Rahul &amp; Sneha M.</strong>
                                    <span>Bangalore • Customized Couple Statue (8-Inch)</span>
                                </div>

                                <div class="tse-ba-cta mt-25">
                                    <button type="button" class="tse-3d-btn-main" onclick="if(window.openAiStatueBot) { window.openAiStatueBot(); } else { document.getElementById('tse-ai-bot-trigger')?.click(); }">
                                        <i class="fas fa-magic"></i> Try With Your Photo
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<script>
(function() {
    var btnBefore = document.getElementById('tse-ba-btn-before');
    var btnAfter = document.getElementById('tse-ba-btn-after');
    var imgEl = document.getElementById('tse-ba-img');
    var badgeEl = document.getElementById('tse-ba-mode-badge');

    var beforeSrc = "{{ Theme::asset()->url('img/3d/before-couple-photo.jpg') }}";
    var afterSrc = "{{ Theme::asset()->url('img/3d/after-couple-3d-statue.png') }}";

    if (!btnBefore || !btnAfter || !imgEl) return;

    btnBefore.addEventListener('click', function() {
        btnBefore.classList.add('active');
        btnAfter.classList.remove('active');
        imgEl.style.opacity = '0';
        setTimeout(function() {
            imgEl.src = beforeSrc;
            badgeEl.innerHTML = '<i class="fas fa-image"></i> Before: Original 2D Photo';
            imgEl.style.opacity = '1';
        }, 150);
    });

    btnAfter.addEventListener('click', function() {
        btnAfter.classList.add('active');
        btnBefore.classList.remove('active');
        imgEl.style.opacity = '0';
        setTimeout(function() {
            imgEl.src = afterSrc;
            badgeEl.innerHTML = '<i class="fas fa-cube"></i> After: 3D Sculpted Figurine';
            imgEl.style.opacity = '1';
        }, 150);
    });
})();
</script>