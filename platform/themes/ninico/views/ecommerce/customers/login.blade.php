@php
    Theme::layout('full-width');
    Theme::set('pageTitle', __('Login'));
    Theme::set('hasBreadcrumb', false);
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
                        <h2 class="tse-auth-heading">{{ __('Welcome back') }}</h2>
                        <p class="tse-auth-subheading">{{ __('Sign in to continue shopping and track your orders.') }}</p>
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
                    <h1 class="tse-auth-card-title mb-2">{{ __('Sign in to your account') }}</h1>

                    <div class="tse-auth-shield-notice d-flex align-items-center gap-2 mb-4">
                        <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="#2563EB" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="flex-shrink-0">
                            <path d="M20 13c0 5-3.5 7.5-7.66 8.95a1 1 0 0 1-.67-.01C7.5 20.5 4 18 4 13V6a1 1 0 0 1 1-1c2 0 4.5-1.2 6.24-2.72a1.17 1.17 0 0 1 1.52 0C14.51 3.81 17 5 19 5a1 1 0 0 1 1 1z"/>
                            <path d="m9 12 2 2 4-4"/>
                        </svg>
                        <span>{{ __('Access your orders, saved favorites, and account details.') }}</span>
                    </div>

                    @if ($errors->any())
                        <div class="alert alert-danger mb-4 py-2 px-3 rounded-3" style="font-size: 13.5px;">
                            <ul class="mb-0 ps-3">
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif

                    @if (session('status'))
                        <div class="alert alert-success mb-4 py-2 px-3 rounded-3" style="font-size: 13.5px;">
                            {{ session('status') }}
                        </div>
                    @endif

                    <form method="POST" action="{{ route('customer.login.post') }}" class="tse-auth-form">
                        @csrf

                        {{-- Email Address --}}
                        <div class="mb-3">
                            <label class="tse-input-label" for="login-email">{{ __('Email address') }}</label>
                            <div class="tse-input-wrapper">
                                <span class="tse-input-icon">
                                    <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="#64748B" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                        <rect width="20" height="16" x="2" y="4" rx="2"/>
                                        <path d="m22 7-8.97 5.7a1.94 1.94 0 0 1-2.06 0L2 7"/>
                                    </svg>
                                </span>
                                <input
                                    type="email"
                                    id="login-email"
                                    name="email"
                                    class="tse-auth-input @error('email') is-invalid @enderror"
                                    placeholder="{{ __('Enter your email address') }}"
                                    value="{{ old('email') }}"
                                    required
                                    autofocus
                                >
                            </div>
                        </div>

                        {{-- Password --}}
                        <div class="mb-3">
                            <label class="tse-input-label" for="login-password">{{ __('Password') }}</label>
                            <div class="tse-input-wrapper">
                                <span class="tse-input-icon">
                                    <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="#64748B" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                        <rect width="18" height="11" x="3" y="11" rx="2" ry="2"/>
                                        <path d="M7 11V7a5 5 0 0 1 10 0v4"/>
                                    </svg>
                                </span>
                                <input
                                    type="password"
                                    id="login-password"
                                    name="password"
                                    class="tse-auth-input @error('password') is-invalid @enderror"
                                    placeholder="{{ __('Enter your password') }}"
                                    required
                                >
                                <button type="button" class="tse-input-toggle-pw" onclick="toggleAuthPassword('login-password', this)" aria-label="Toggle password visibility">
                                    <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="#64748B" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                        <path d="M2.062 12.348a1 1 0 0 1 0-.696 10.75 10.75 0 0 1 19.876 0 1 1 0 0 1 0 .696 10.75 10.75 0 0 1-19.876 0"/>
                                        <circle cx="12" cy="12" r="3"/>
                                    </svg>
                                </button>
                            </div>
                        </div>

                        {{-- Options: Remember & Forgot Password --}}
                        <div class="d-flex align-items-center justify-content-between mb-4">
                            <label class="tse-custom-checkbox d-flex align-items-center gap-2 m-0 cursor-pointer">
                                <input type="checkbox" name="remember" value="1" {{ old('remember') ? 'checked' : '' }}>
                                <span class="tse-checkbox-text">{{ __('Remember me') }}</span>
                            </label>
                            <a href="{{ route('customer.password.reset') }}" class="tse-forgot-link">
                                {{ __('Forgot password?') }}
                            </a>
                        </div>

                        {{-- Submit Button --}}
                        <button type="submit" class="btn tse-btn-auth-primary w-100 mb-4">
                            {{ __('Sign in') }}
                        </button>

                        {{-- Divider --}}
                        <div class="tse-auth-divider mb-3">
                            <span>{{ __('New to Rainbow Statue Gallery?') }}</span>
                        </div>

                        {{-- Create Account Link --}}
                        <div class="text-center">
                            <a href="{{ route('customer.register') }}" class="tse-create-account-link">
                                {{ __('Create an account') }}
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
</script>
