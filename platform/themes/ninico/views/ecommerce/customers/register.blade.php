@php
    Theme::layout('full-width');
    Theme::set('pageTitle', __('Register'));
    Theme::set('hasBreadcrumb', false);

    $termsUrl = theme_option('ecommerce_term_and_privacy_policy_url', '#');
@endphp

<div class="tse-auth-page-wrapper">
    <div class="container tse-auth-container">
        <div class="row align-items-center justify-content-center gy-4 gy-lg-5 gx-0 gx-lg-5">
            {{-- Left Column: Artwork & Brand --}}
            <div class="col-lg-6 col-md-10">
                <div class="tse-auth-left-content text-center">
                    <div class="tse-auth-statue-box mb-3 mb-lg-4">
                        <picture>
                            <source srcset="{{ Theme::asset()->url('img/auth-couple-statue.webp') }}" type="image/webp">
                            <img
                                src="{{ Theme::asset()->url('img/auth-couple-statue.png') }}"
                                alt="Emma & Ryan Couple Statue"
                                class="tse-auth-statue-img img-fluid"
                                decoding="async"
                            >
                        </picture>
                    </div>

                    <div class="tse-auth-messaging mb-3 mb-lg-4">
                        <h2 class="tse-auth-tagline">{{ __('Create an account to save your favorites and track your orders.') }}</h2>
                    </div>

                    <div class="tse-auth-benefits-strip d-flex align-items-center justify-content-center gap-2 gap-sm-3">
                        <div class="tse-auth-benefit-item text-center">
                            <div class="tse-benefit-icon-circle mx-auto mb-2">
                                <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="#EA580C" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                    <circle cx="8" cy="21" r="1"/>
                                    <circle cx="19" cy="21" r="1"/>
                                    <path d="M2.05 2.05h2l2.66 12.42a2 2 0 0 0 2 1.58h9.78a2 2 0 0 0 1.95-1.57l1.65-7.43H5.12"/>
                                </svg>
                            </div>
                            <span class="tse-benefit-label">{{ __('Faster checkout') }}</span>
                        </div>

                        <div class="tse-benefit-divider"></div>

                        <div class="tse-auth-benefit-item text-center">
                            <div class="tse-benefit-icon-circle mx-auto mb-2">
                                <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="#EA580C" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                    <path d="m7.5 4.27 9 5.15"/>
                                    <path d="M21 8a2 2 0 0 0-1-1.73l-7-4a2 2 0 0 0-2 0l-7 4A2 2 0 0 0 3 8v8a2 2 0 0 0 1 1.73l7 4a2 2 0 0 0 2 0l7-4A2 2 0 0 0 21 16Z"/>
                                    <path d="m3.3 7 8.7 5 8.7-5"/>
                                    <path d="M12 22V12"/>
                                </svg>
                            </div>
                            <span class="tse-benefit-label">{{ __('Order updates') }}</span>
                        </div>

                        <div class="tse-benefit-divider"></div>

                        <div class="tse-auth-benefit-item text-center">
                            <div class="tse-benefit-icon-circle mx-auto mb-2">
                                <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="#EA580C" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                    <path d="M19 14c1.49-1.46 3-3.21 3-5.5A5.5 5.5 0 0 0 16.5 3c-1.76 0-3 .5-4.5 2-1.5-1.5-2.74-2-4.5-2A5.5 5.5 0 0 0 2 8.5c0 2.3 1.5 4.05 3 5.5l7 7Z"/>
                                </svg>
                            </div>
                            <span class="tse-benefit-label">{{ __('Saved favorites') }}</span>
                        </div>
                    </div>
                </div>
            </div>

            {{-- Right Column: Form Card --}}
            <div class="col-lg-6 col-md-10">
                <div class="tse-auth-card">
                    <h1 class="tse-auth-card-title mb-2">{{ __('Create your account') }}</h1>

                    <div class="tse-auth-shield-notice d-flex align-items-center gap-2 mb-3">
                        <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="#2563EB" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="flex-shrink-0">
                            <path d="M20 13c0 5-3.5 7.5-7.66 8.95a1 1 0 0 1-.67-.01C7.5 20.5 4 18 4 13V6a1 1 0 0 1 1-1c2 0 4.5-1.2 6.24-2.72a1.17 1.17 0 0 1 1.52 0C14.51 3.81 17 5 19 5a1 1 0 0 1 1 1z"/>
                            <path d="m9 12 2 2 4-4"/>
                        </svg>
                        <span>{{ __("Your information is private and secure. We'll never share your details with third parties.") }}</span>
                    </div>

                    @if ($errors->any())
                        <div class="alert alert-danger mb-3 py-2 px-3 rounded-3" style="font-size: 13.5px;">
                            <ul class="mb-0 ps-3">
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif

                    <form method="POST" action="{{ route('customer.register.post') }}" class="tse-auth-form" id="tse-register-form">
                        @csrf

                        {{-- Full Name --}}
                        <div class="mb-2 mb-sm-3">
                            <label class="tse-input-label" for="register-name">{{ __('Full name') }}</label>
                            <div class="tse-input-wrapper">
                                <span class="tse-input-icon">
                                    <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="#64748B" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                        <path d="M19 21v-2a4 4 0 0 0-4-4H9a4 4 0 0 0-4 4v2"/>
                                        <circle cx="12" cy="7" r="4"/>
                                    </svg>
                                </span>
                                <input
                                    type="text"
                                    id="register-name"
                                    name="name"
                                    class="tse-auth-input @error('name') is-invalid @enderror"
                                    placeholder="{{ __('Enter your full name') }}"
                                    value="{{ old('name') }}"
                                    required
                                    autofocus
                                >
                            </div>
                        </div>

                        {{-- Email Address --}}
                        <div class="mb-2 mb-sm-3">
                            <label class="tse-input-label" for="register-email">{{ __('Email address') }}</label>
                            <div class="tse-input-wrapper">
                                <span class="tse-input-icon">
                                    <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="#64748B" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                        <rect width="20" height="16" x="2" y="4" rx="2"/>
                                        <path d="m22 7-8.97 5.7a1.94 1.94 0 0 1-2.06 0L2 7"/>
                                    </svg>
                                </span>
                                <input
                                    type="email"
                                    id="register-email"
                                    name="email"
                                    class="tse-auth-input @error('email') is-invalid @enderror"
                                    placeholder="{{ __('Enter your email address') }}"
                                    value="{{ old('email') }}"
                                    required
                                >
                            </div>
                        </div>

                        {{-- Phone (optional) --}}
                        <div class="mb-2 mb-sm-3">
                            <label class="tse-input-label" for="register-phone">
                                {{ __('Phone') }} <span class="text-muted fw-normal">({{ __('optional') }})</span>
                            </label>
                            <div class="tse-input-wrapper">
                                <span class="tse-input-icon">
                                    <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="#64748B" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                        <path d="M22 16.92v3a2 2 0 0 1-2.18 2 19.79 19.79 0 0 1-8.63-3.07 19.5 19.5 0 0 1-6-6 19.79 19.79 0 0 1-3.07-8.67A2 2 0 0 1 4.11 2h3a2 2 0 0 1 2 1.72 12.84 12.84 0 0 0 .7 2.81 2 2 0 0 1-.45 2.11L8.09 9.91a16 16 0 0 0 6 6l1.27-1.27a2 2 0 0 1 2.11-.45 12.84 12.84 0 0 0 2.81.7A2 2 0 0 1 22 16.92z"/>
                                    </svg>
                                </span>
                                <input
                                    type="tel"
                                    id="register-phone"
                                    name="phone"
                                    class="tse-auth-input @error('phone') is-invalid @enderror"
                                    placeholder="{{ __('Enter your phone number') }}"
                                    value="{{ old('phone') }}"
                                >
                            </div>
                        </div>

                        {{-- Password --}}
                        <div class="mb-2 mb-sm-3">
                            <label class="tse-input-label" for="register-password">{{ __('Password') }}</label>
                            <div class="tse-input-wrapper">
                                <span class="tse-input-icon">
                                    <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="#64748B" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                        <rect width="18" height="11" x="3" y="11" rx="2" ry="2"/>
                                        <path d="M7 11V7a5 5 0 0 1 10 0v4"/>
                                    </svg>
                                </span>
                                <input
                                    type="password"
                                    id="register-password"
                                    name="password"
                                    class="tse-auth-input @error('password') is-invalid @enderror"
                                    placeholder="{{ __('Create a password') }}"
                                    required
                                >
                                <button type="button" class="tse-input-toggle-pw" onclick="toggleAuthPassword('register-password', this)" aria-label="Toggle password visibility">
                                    <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="#64748B" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                        <path d="M2.062 12.348a1 1 0 0 1 0-.696 10.75 10.75 0 0 1 19.876 0 1 1 0 0 1 0 .696 10.75 10.75 0 0 1-19.876 0"/>
                                        <circle cx="12" cy="12" r="3"/>
                                    </svg>
                                </button>
                            </div>

                            {{-- Password Strength Meter --}}
                            <div class="tse-pw-meter-wrap mt-2">
                                <div class="tse-pw-bars d-flex gap-1 mb-1">
                                    <span class="tse-pw-bar" id="pw-bar-1"></span>
                                    <span class="tse-pw-bar" id="pw-bar-2"></span>
                                    <span class="tse-pw-bar" id="pw-bar-3"></span>
                                    <span class="tse-pw-bar" id="pw-bar-4"></span>
                                </div>
                                <div class="tse-pw-status-row d-flex justify-content-end mb-1">
                                    <span class="tse-pw-status-text">
                                        {{ __('Password strength:') }} <strong id="tse-pw-strength-label" class="text-muted">{{ __('None') }}</strong>
                                    </span>
                                </div>
                                <p class="tse-pw-hint">
                                    {{ __('Use at least 8 characters with a mix of letters, numbers, and a symbol (e.g., !@#).') }}
                                </p>
                            </div>
                        </div>

                        {{-- Confirm Password --}}
                        <div class="mb-3">
                            <label class="tse-input-label" for="register-password-confirmation">{{ __('Confirm password') }}</label>
                            <div class="tse-input-wrapper">
                                <span class="tse-input-icon">
                                    <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="#64748B" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                        <rect width="18" height="11" x="3" y="11" rx="2" ry="2"/>
                                        <path d="M7 11V7a5 5 0 0 1 10 0v4"/>
                                    </svg>
                                </span>
                                <input
                                    type="password"
                                    id="register-password-confirmation"
                                    name="password_confirmation"
                                    class="tse-auth-input @error('password_confirmation') is-invalid @enderror"
                                    placeholder="{{ __('Re-enter your password') }}"
                                    required
                                >
                                <button type="button" class="tse-input-toggle-pw" onclick="toggleAuthPassword('register-password-confirmation', this)" aria-label="Toggle password visibility">
                                    <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="#64748B" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                        <path d="M2.062 12.348a1 1 0 0 1 0-.696 10.75 10.75 0 0 1 19.876 0 1 1 0 0 1 0 .696 10.75 10.75 0 0 1-19.876 0"/>
                                        <circle cx="12" cy="12" r="3"/>
                                    </svg>
                                </button>
                            </div>
                        </div>

                        {{-- Terms & Policy Checkbox --}}
                        <div class="mb-3">
                            <label class="tse-custom-checkbox d-flex align-items-start gap-2 m-0 cursor-pointer">
                                <input type="checkbox" name="agree_terms_and_policy" value="1" required {{ old('agree_terms_and_policy') ? 'checked' : '' }} class="mt-1">
                                <span class="tse-checkbox-text">
                                    {{ __('I agree to the') }}
                                    <a href="{{ $termsUrl }}" class="tse-link-accent" target="_blank">{{ __('Terms of Service') }}</a>
                                    {{ __('and') }}
                                    <a href="{{ $termsUrl }}" class="tse-link-accent" target="_blank">{{ __('Privacy Policy.') }}</a>
                                </span>
                            </label>
                        </div>

                        {{-- Submit Button --}}
                        <button type="submit" class="btn tse-btn-auth-primary w-100 mb-3">
                            {{ __('Create account') }}
                        </button>

                        {{-- Sign In Footer Link --}}
                        <div class="text-center">
                            <span class="text-muted">{{ __('Already have an account?') }}</span>
                            <a href="{{ route('customer.login') }}" class="tse-signin-footer-link ms-1 fw-bold">
                                {{ __('Sign in') }}
                            </a>
                        </div>

                        {!! apply_filters(BASE_FILTER_AFTER_LOGIN_OR_REGISTER_FORM, null, Botble\Ecommerce\Models\Customer::class) !!}
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    function toggleAuthPassword(inputId, btn) {
        const input = document.getElementById(inputId);
        if (!input) return;
        const isPassword = input.type === 'password';
        input.type = isPassword ? 'text' : 'password';
        btn.innerHTML = isPassword ? `
            <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="#2563EB" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                <path d="m15 18-.722-3.25"/>
                <path d="M2 8a10.645 10.645 0 0 0 20 0"/>
                <path d="m20 15-1.726-2.05"/>
                <path d="m4 15 1.726-2.05"/>
                <path d="m9 18 .722-3.25"/>
            </svg>` : `
            <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="#64748B" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                <path d="M2.062 12.348a1 1 0 0 1 0-.696 10.75 10.75 0 0 1 19.876 0 1 1 0 0 1 0 .696 10.75 10.75 0 0 1-19.876 0"/>
                <circle cx="12" cy="12" r="3"/>
            </svg>`;
    }

    // Dynamic Password Strength Real-time Evaluation
    document.addEventListener('DOMContentLoaded', function() {
        const pwInput = document.getElementById('register-password');
        const bar1 = document.getElementById('pw-bar-1');
        const bar2 = document.getElementById('pw-bar-2');
        const bar3 = document.getElementById('pw-bar-3');
        const bar4 = document.getElementById('pw-bar-4');
        const label = document.getElementById('tse-pw-strength-label');

        if (!pwInput || !bar1) return;

        pwInput.addEventListener('input', function() {
            const val = pwInput.value;
            let score = 0;

            if (val.length >= 6) score++;
            if (val.length >= 8) score++;
            if (/[0-9]/.test(val) && /[a-zA-Z]/.test(val)) score++;
            if (/[^a-zA-Z0-9]/.test(val)) score++;

            // Clear bars
            [bar1, bar2, bar3, bar4].forEach(b => {
                b.className = 'tse-pw-bar';
            });

            if (!val.length) {
                label.textContent = 'None';
                label.className = 'text-muted';
                return;
            }

            if (score <= 1) {
                bar1.classList.add('lvl-weak');
                label.textContent = 'Weak';
                label.className = 'text-danger fw-bold';
            } else if (score === 2) {
                bar1.classList.add('lvl-fair');
                bar2.classList.add('lvl-fair');
                label.textContent = 'Fair';
                label.className = 'text-warning fw-bold';
            } else if (score === 3) {
                bar1.classList.add('lvl-good');
                bar2.classList.add('lvl-good');
                bar3.classList.add('lvl-good');
                label.textContent = 'Good';
                label.className = 'text-primary fw-bold';
            } else {
                bar1.classList.add('lvl-strong');
                bar2.classList.add('lvl-strong');
                bar3.classList.add('lvl-strong');
                bar4.classList.add('lvl-strong');
                label.textContent = 'Strong';
                label.className = 'text-success fw-bold';
            }
        });
    });
</script>
