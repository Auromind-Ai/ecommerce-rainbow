<section class="tse-how-it-works-section" id="how-it-works">
    <!-- Ambient Background Gradients matching reference image -->
    <div class="tse-how-bg-glow tse-how-bg-glow-tl"></div>
    <div class="tse-how-bg-glow tse-how-bg-glow-tr"></div>
    <div class="tse-how-bg-glow tse-how-bg-glow-br"></div>

    <div class="container position-relative" style="z-index: 2;">
        <!-- Header Section -->
        <div class="row justify-content-center text-center mb-30">
            <div class="col-lg-9 col-md-11">
                <!-- Pill Badge -->
                <div class="tse-how-magic-badge mb-15">
                    <i class="fas fa-sparkles"></i>
                    <span>Simple. Easy. Magical.</span>
                </div>

                <!-- Main Title with Swoosh Underline -->
                <h2 class="tse-how-main-title">
                    How It <span class="tse-how-title-word">Works
                        <svg class="tse-how-swoosh" viewBox="0 0 160 14" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M3 10.5C45 2.5 115 2 157 10" stroke="#F59E0B" stroke-width="4.5" stroke-linecap="round"/>
                        </svg>
                    </span>
                </h2>

                <!-- Subtitles -->
                <h3 class="tse-how-tagline">
                    You send us your selfie, we create your minime
                </h3>
                <p class="tse-how-desc">
                    The latest 3D printing technology and digital sculpting turn your photos into a miniature of you.
                </p>
            </div>
        </div>

        <!-- 4 Step Cards Grid with Flow Arrows -->
        <div class="tse-how-grid-wrapper">
            <div class="row g-3 g-xl-4 align-items-stretch position-relative">
                <!-- Step 01 -->
                <div class="col-12 col-sm-6 col-lg-3 tse-how-col">
                    <div class="tse-card-flow tse-card-step1">
                        <div class="tse-card-pill-wrap">
                            <span class="tse-pill-badge tse-pill-blue">Step 01</span>
                        </div>
                        <h4 class="tse-card-title">Order Confirmation</h4>
                        <p class="tse-card-desc">
                            Confirm your order by sending us good quality images.
                        </p>
                        <div class="tse-card-img-wrap">
                            <img src="{{ Theme::asset()->url('img/how-step-1.png') }}" alt="Step 01 - Order Confirmation with Selfie Photo" loading="lazy" class="tse-card-step-img">
                        </div>
                    </div>
                    <!-- Flow Arrow to Step 2 (visible on desktop) -->
                    <div class="tse-flow-arrow tse-flow-arrow-1">
                        <i class="fas fa-arrow-right"></i>
                    </div>
                </div>

                <!-- Step 02 -->
                <div class="col-12 col-sm-6 col-lg-3 tse-how-col">
                    <div class="tse-card-flow tse-card-step2">
                        <div class="tse-card-pill-wrap">
                            <span class="tse-pill-badge tse-pill-purple">Step 02</span>
                        </div>
                        <h4 class="tse-card-title">Designing</h4>
                        <p class="tse-card-desc">
                            Our expert team will design your miniature and share the 3D first look with you.
                        </p>
                        <div class="tse-card-img-wrap">
                            <img src="{{ Theme::asset()->url('img/how-step-2.png') }}" alt="Step 02 - 3D Digital Sculpting Design" loading="lazy" class="tse-card-step-img">
                        </div>
                    </div>
                    <!-- Flow Arrow to Step 3 (visible on desktop) -->
                    <div class="tse-flow-arrow tse-flow-arrow-2">
                        <i class="fas fa-arrow-right"></i>
                    </div>
                </div>

                <!-- Step 03 -->
                <div class="col-12 col-sm-6 col-lg-3 tse-how-col">
                    <div class="tse-card-flow tse-card-step3">
                        <div class="tse-card-pill-wrap">
                            <span class="tse-pill-badge tse-pill-green">Step 03</span>
                        </div>
                        <h4 class="tse-card-title">3D Printing</h4>
                        <p class="tse-card-desc">
                            With state-of-the-art technology, we print your realistic 3D model.
                        </p>
                        <div class="tse-card-img-wrap">
                            <img src="{{ Theme::asset()->url('img/how-step-3.png') }}" alt="Step 03 - High Precision 3D Printing" loading="lazy" class="tse-card-step-img">
                        </div>
                    </div>
                    <!-- Flow Arrow to Step 4 (visible on desktop) -->
                    <div class="tse-flow-arrow tse-flow-arrow-3">
                        <i class="fas fa-arrow-right"></i>
                    </div>
                </div>

                <!-- Step 04 -->
                <div class="col-12 col-sm-6 col-lg-3 tse-how-col">
                    <div class="tse-card-flow tse-card-step4">
                        <div class="tse-card-pill-wrap">
                            <span class="tse-pill-badge tse-pill-orange">Step 04</span>
                        </div>
                        <h4 class="tse-card-title">Shipping & Delivery</h4>
                        <p class="tse-card-desc">
                            We provide global scale delivery: your minime reaches wherever you are.
                        </p>
                        <div class="tse-card-img-wrap">
                            <img src="{{ Theme::asset()->url('img/how-step-4.png') }}" alt="Step 04 - Worldwide Shipping and Finished Figurine" loading="lazy" class="tse-card-step-img">
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Bottom Feature Bar matching reference image -->
        <div class="row justify-content-center mt-35">
            <div class="col-lg-11 col-12">
                <div class="tse-how-features-bar">
                    <div class="tse-how-feature-item">
                        <div class="tse-feat-icon tse-feat-diamond">
                            <i class="fas fa-gem"></i>
                        </div>
                        <span class="tse-feat-label">Premium Quality <strong>3D Prints</strong></span>
                    </div>

                    <div class="tse-how-feature-divider"></div>

                    <div class="tse-how-feature-item">
                        <div class="tse-feat-icon tse-feat-shield">
                            <i class="fas fa-shield-alt"></i>
                        </div>
                        <span class="tse-feat-label">Safe & Secure <strong>Shopping</strong></span>
                    </div>

                    <div class="tse-how-feature-divider"></div>

                    <div class="tse-how-feature-item">
                        <div class="tse-feat-icon tse-feat-globe">
                            <i class="fas fa-globe-americas"></i>
                        </div>
                        <span class="tse-feat-label">Worldwide <strong>Delivery</strong></span>
                    </div>

                    <div class="tse-how-feature-divider"></div>

                    <div class="tse-how-feature-item">
                        <div class="tse-feat-icon tse-feat-heart">
                            <i class="fas fa-heart"></i>
                        </div>
                        <span class="tse-feat-label">Turn Your Memories <strong>Into a Minime</strong></span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>