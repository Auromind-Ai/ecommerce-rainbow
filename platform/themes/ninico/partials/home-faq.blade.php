@php
    $faqs = [
        [
            'q' => 'How can I order a personalized statue?',
            'a' => 'You can browse our collection, select your preferred statue and click "Customize Your Statue" or "Order on WhatsApp". Upload your photos and submit your requirements. Our team will contact you to discuss the details and confirm your order.',
            'icon' => 'fal fa-shopping-bag'
        ],
        [
            'q' => 'What type of photos should I upload?',
            'a' => 'Please upload clear, high-quality photos with good lighting. Front-facing photos are recommended so our design team can capture facial details accurately.',
            'icon' => 'fal fa-camera'
        ],
        [
            'q' => 'How many photos do I need to provide?',
            'a' => 'We recommend uploading 2–5 clear photos from different angles for better reference. The exact requirements may vary depending on your statue design.',
            'icon' => 'fal fa-images'
        ],
        [
            'q' => 'Can I customize the statue?',
            'a' => 'Yes! You can customize clothing, poses, hairstyles, accessories and other details depending on the selected statue type. Share your preferences with our team.',
            'icon' => 'fal fa-magic'
        ],
        [
            'q' => 'How much does a personalized statue cost?',
            'a' => 'Our personalized statues start from ₹2,000. The final price depends on the statue size, design complexity, materials and customization requirements. Our team will share a quotation before confirming your order.',
            'icon' => 'fal fa-tag'
        ],
        [
            'q' => 'Will I receive a design preview before printing?',
            'a' => 'Yes. We share a 3D design preview for your review and approval before proceeding with production.',
            'icon' => 'fal fa-cube'
        ],
        [
            'q' => 'Can I request changes to the design?',
            'a' => 'You can share your feedback during the design approval stage. Our team will discuss possible modifications and confirm any additional charges, if applicable.',
            'icon' => 'fal fa-edit'
        ],
        [
            'q' => 'How long does it take to complete my statue?',
            'a' => 'Production time depends on the design, customization and order requirements. Our team will provide an estimated timeline when your order is confirmed.',
            'icon' => 'fal fa-calendar-alt'
        ],
        [
            'q' => 'Do you deliver across India?',
            'a' => 'We can discuss delivery options based on your location. Shipping availability, charges and estimated delivery time will be confirmed by our team.',
            'icon' => 'fal fa-truck'
        ],
        [
            'q' => 'Can I order a statue as a gift?',
            'a' => 'Absolutely! Personalized statues make wonderful gifts for weddings, anniversaries, birthdays, special occasions and memorable celebrations.',
            'icon' => 'fal fa-gift'
        ],
        [
            'q' => 'Do I need to create an account to place an order?',
            'a' => 'No. You can submit your enquiry directly through our website without creating an account or signing up.',
            'icon' => 'fal fa-user-check'
        ],
        [
            'q' => 'Can I pay online through the website?',
            'a' => 'Currently, orders are handled through our enquiry process. Our team will contact you to confirm the final price and explain the available payment options.',
            'icon' => 'fal fa-credit-card'
        ],
        [
            'q' => 'How can I check my order status?',
            'a' => 'You can contact our team through WhatsApp or phone using your enquiry details. Our team will provide updates about your order.',
            'icon' => 'fal fa-phone-alt'
        ],
        [
            'q' => 'What materials are used to create the statues?',
            'a' => 'We use different materials and finishing techniques depending on the selected product. Please contact our team for material details for your preferred design.',
            'icon' => 'fal fa-layer-group'
        ],
        [
            'q' => 'Can I order a miniature of a single person, couple or family?',
            'a' => 'Yes! We create personalized miniatures based on individual, couple and family photographs, subject to design feasibility.',
            'icon' => 'fal fa-users'
        ],
    ];
@endphp

<section class="tse-faq-section" id="faq-section">
    <!-- Ambient Corner Curves matching mockup -->
    <div class="tse-faq-ambient tse-faq-ambient-top-left"></div>
    <div class="tse-faq-ambient tse-faq-ambient-bottom-right"></div>

    <div class="container position-relative" style="z-index: 2;">
        <!-- Header Section -->
        <div class="row justify-content-center text-center mb-45">
            <div class="col-lg-9 col-md-11">
                <!-- Pill Badge -->
                <div class="tse-faq-pill-badge mb-15">
                    <span>FAQ</span>
                </div>

                <!-- Main Heading (Big Fonts) -->
                <h2 class="tse-faq-heading">
                    Frequently Asked <span class="tse-text-blue">Questions</span>
                </h2>

                <!-- Subheading (Big Fonts) -->
                <p class="tse-faq-subheading">
                    Quick answers to help you order your personalized statue
                </p>

                <!-- Dual-tone accent underline -->
                <div class="tse-faq-accent-bar"></div>
            </div>
        </div>

        <div class="row g-4 align-items-start">
            <!-- Left Column: 3D Proposal Miniature & Trust Badges -->
            <div class="col-lg-5 col-xl-5">
                <div class="tse-faq-left-showcase">
                    <div class="tse-faq-visual-row">
                        <!-- Statue Illustration -->
                        <div class="tse-faq-statue-side">
                            <img src="{{ asset('themes/ninico/img/faq-statue-2x.png') }}?v={{ time() }}"
                                 alt="Personalized 3D Miniature Couple Proposal Statue"
                                 class="tse-faq-statue-img"
                                 loading="lazy">
                        </div>

                        <!-- 3 Trust Badges -->
                        <div class="tse-faq-badges-side">
                            <div class="tse-faq-badge-item">
                                <div class="tse-faq-badge-icon">
                                    <i class="fal fa-shield-check"></i>
                                </div>
                                <span class="tse-faq-badge-text">High Quality 3D Prints</span>
                            </div>

                            <div class="tse-faq-badge-item">
                                <div class="tse-faq-badge-icon">
                                    <i class="fal fa-shipping-fast"></i>
                                </div>
                                <span class="tse-faq-badge-text">Safe &amp; Secure Delivery</span>
                            </div>

                            <div class="tse-faq-badge-item">
                                <div class="tse-faq-badge-icon">
                                    <i class="fal fa-headset"></i>
                                </div>
                                <span class="tse-faq-badge-text">Dedicated Support</span>
                            </div>
                        </div>
                    </div>

                    <!-- Direct WhatsApp Support Bar -->
                    <div class="tse-faq-wa-help-card">
                        <div class="tse-faq-wa-help-info">
                            <h4 class="tse-faq-wa-help-title">Need personalized assistance?</h4>
                            <p class="tse-faq-wa-help-desc">Our team is ready to help you on WhatsApp with photo suggestions &amp; order queries.</p>
                        </div>
                        <a href="https://wa.me/91904777229?text=Hi%2C%20I%20have%20questions%20about%20ordering%20a%20personalized%20statue"
                           target="_blank"
                           rel="noopener noreferrer"
                           class="tse-faq-wa-help-btn">
                            <i class="fab fa-whatsapp"></i> Chat on WhatsApp
                        </a>
                    </div>
                </div>
            </div>

            <!-- Right Column: Interactive 15-Question Accordion (Big Fonts) -->
            <div class="col-lg-7 col-xl-7">
                <div class="accordion tse-faq-accordion" id="homeFaqAccordion">
                    @foreach($faqs as $i => $item)
                        <div class="accordion-item tse-faq-item">
                            <h3 class="accordion-header" id="faqHeading{{ $i }}">
                                <button class="accordion-button tse-faq-btn {{ $i === 0 ? '' : 'collapsed' }}"
                                        type="button"
                                        data-bs-toggle="collapse"
                                        data-bs-target="#faqCollapse{{ $i }}"
                                        aria-expanded="{{ $i === 0 ? 'true' : 'false' }}"
                                        aria-controls="faqCollapse{{ $i }}">
                                    <span class="tse-faq-icon-wrap">
                                        <i class="{{ $item['icon'] }}"></i>
                                    </span>
                                    <span class="tse-faq-q-text">{{ $item['q'] }}</span>
                                    <span class="tse-faq-arrow">
                                        <i class="fal fa-chevron-down"></i>
                                    </span>
                                </button>
                            </h3>
                            <div id="faqCollapse{{ $i }}"
                                 class="accordion-collapse collapse {{ $i === 0 ? 'show' : '' }}"
                                 aria-labelledby="faqHeading{{ $i }}"
                                 data-bs-parent="#homeFaqAccordion">
                                <div class="accordion-body tse-faq-body">
                                    <p class="tse-faq-a-text">{{ $item['a'] }}</p>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
</section>
