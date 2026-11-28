<section class="tse-3d-process-section">
    <div class="container">
        <!-- Section Header -->
        <div class="row justify-content-center text-center mb-35">
            <div class="col-lg-8 col-md-10">
                <div class="tse-3d-pill-badge mb-12">
                    <i class="fas fa-magic"></i> ARTISAN CRAFTSMANSHIP JOURNEY
                </div>
                <h2 class="tse-3d-section-title">
                    From <span>2D Photo</span> to Handcrafted <span>3D Masterpiece</span>
                </h2>
                <p class="tse-3d-section-desc">
                    We combine high-precision 3D digital sculpting with traditional fine-art casting and hand-painting to craft statues with uncanny personal likeness.
                </p>
            </div>
        </div>

        <!-- 4 Step Cards Grid -->
        <div class="row g-3 g-md-4">
            <!-- Step 1 -->
            <div class="col-12 col-sm-6 col-lg-3">
                <div class="tse-step-3d-card tse-3d-tilt">
                    <div class="tse-step-num-badge">01</div>
                    <div class="tse-step-icon-wrap">
                        <i class="fas fa-camera-retro"></i>
                    </div>
                    <h4 class="tse-step-title">Photo & AI Depth Scan</h4>
                    <p class="tse-step-desc">
                        Upload any clear smartphone photo. AI extracts 3D depth, posture, contours, and skin-tone nuances.
                    </p>
                    <div class="tse-step-tag">
                        <i class="fas fa-check"></i> High-Accuracy Extraction
                    </div>
                </div>
            </div>

            <!-- Step 2 -->
            <div class="col-12 col-sm-6 col-lg-3">
                <div class="tse-step-3d-card tse-3d-tilt">
                    <div class="tse-step-num-badge">02</div>
                    <div class="tse-step-icon-wrap">
                        <i class="fas fa-cube"></i>
                    </div>
                    <h4 class="tse-step-title">3D Digital Sculpting</h4>
                    <p class="tse-step-desc">
                        Master digital sculptors refine high-polygon mesh, facial expressions, attire folds, and hair curls.
                    </p>
                    <div class="tse-step-tag">
                        <i class="fas fa-check"></i> 360° Customer Approval
                    </div>
                </div>
            </div>

            <!-- Step 3 -->
            <div class="col-12 col-sm-6 col-lg-3">
                <div class="tse-step-3d-card tse-3d-tilt">
                    <div class="tse-step-num-badge">03</div>
                    <div class="tse-step-icon-wrap">
                        <i class="fas fa-paint-brush"></i>
                    </div>
                    <h4 class="tse-step-title">Artisan Hand-Painting</h4>
                    <p class="tse-step-desc">
                        Cast in durable polyresin or bronze, then individually hand-painted with archival natural pigments.
                    </p>
                    <div class="tse-step-tag">
                        <i class="fas fa-check"></i> Fine Brush Details
                    </div>
                </div>
            </div>

            <!-- Step 4 -->
            <div class="col-12 col-sm-6 col-lg-3">
                <div class="tse-step-3d-card tse-3d-tilt">
                    <div class="tse-step-num-badge">04</div>
                    <div class="tse-step-icon-wrap">
                        <i class="fas fa-gift"></i>
                    </div>
                    <h4 class="tse-step-title">Keepsake Delivery</h4>
                    <p class="tse-step-desc">
                        Sealed in anti-UV lacquer and cushioned in a luxury velvet presentation case, delivered with care.
                    </p>
                    <div class="tse-step-tag">
                        <i class="fas fa-check"></i> Insured Pan-India
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


<script>
(function() {
    function init3DTiltCards() {
        var cards = document.querySelectorAll('.tse-3d-tilt, .tse-3d-card');
        cards.forEach(function(card) {
            card.addEventListener('mousemove', function(e) {
                var rect = card.getBoundingClientRect();
                var x = e.clientX - rect.left;
                var y = e.clientY - rect.top;
                var cx = rect.width / 2;
                var cy = rect.height / 2;
                var rotX = ((y - cy) / cy) * -8;
                var rotY = ((x - cx) / cx) * 8;
                card.style.transform = 'perspective(1000px) rotateX(' + rotX.toFixed(2) + 'deg) rotateY(' + rotY.toFixed(2) + 'deg) scale3d(1.02, 1.02, 1.02)';
            });
            card.addEventListener('mouseleave', function() {
                card.style.transform = 'perspective(1000px) rotateX(0deg) rotateY(0deg) scale3d(1, 1, 1)';
            });
        });
    }

    if (document.readyState === 'loading') {
        document.addEventListener('DOMContentLoaded', init3DTiltCards);
    } else {
        init3DTiltCards();
    }
})();
</script>