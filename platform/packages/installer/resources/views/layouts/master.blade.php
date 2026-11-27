<!DOCTYPE html>
<html lang="{{ Str::replace('_', '-', App::getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta
        http-equiv="X-UA-Compatible"
        content="IE=edge"
    >
    <meta
        name="viewport"
        content="width=device-width, initial-scale=1"
    >
    <title>@yield('pageTitle', trans('packages/installer::installer.title'))</title>

    <link
        href="{{ asset('vendor/core/core/base/images/favicon.png') }}"
        rel="icon"
    >

    @include('core/base::components.layouts.header')

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@tabler/core@1.0.0-beta20/dist/css/tabler.min.css">
    <link
        href="{{ asset('vendor/core/packages/installer/css/style.css') }}?v={{ get_cms_version() }}"
        rel="stylesheet"
    />

    <style>
        [v-cloak],
        [x-cloak] {
            display: none;
        }
        body {
            background: linear-gradient(135deg, #0f172a 0%, #1e3a8a 50%, #2073BF 100%) !important;
            background-attachment: fixed !important;
            font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial, sans-serif !important;
            min-height: 100vh;
            color: #1e293b;
        }
        .installer-container {
            max-width: 980px !important;
            margin: 40px auto !important;
            padding: 0 15px;
        }
        .installer-wrapper {
            background: #ffffff !important;
            border-radius: 16px !important;
            box-shadow: 0 20px 45px rgba(0, 0, 0, 0.28) !important;
            overflow: hidden !important;
        }
        .steps-backdrop {
            background: #f8fafc;
            border-right: 1px solid #e2e8f0;
        }
        .step-item {
            color: #64748b;
            font-size: 14px;
            font-weight: 500;
        }
        .step-item.active {
            color: #2073BF !important;
            font-weight: 700;
        }
        .card {
            border: none !important;
            box-shadow: none !important;
        }
        .card-header {
            background: transparent !important;
            border-bottom: 1px solid #f1f5f9 !important;
            padding: 24px !important;
        }
        .card-body {
            padding: 28px !important;
        }
        .card-footer {
            background: #f8fafc !important;
            border-top: 1px solid #f1f5f9 !important;
            padding: 18px 28px !important;
        }
        .btn-primary {
            background: #2073BF !important;
            border-color: #2073BF !important;
            border-radius: 8px !important;
            padding: 10px 24px !important;
            font-weight: 600 !important;
            box-shadow: 0 4px 12px rgba(32, 115, 191, 0.35) !important;
        }
        .btn-primary:hover {
            background: #154c80 !important;
            border-color: #154c80 !important;
        }
        .form-select, .form-control {
            border-radius: 8px !important;
            border: 1.5px solid #cbd5e1 !important;
            padding: 10px 14px !important;
            font-size: 14px !important;
        }
    </style>

    @php
        Assets::getFacadeRoot()
            ->removeStyles([
                'fontawesome',
                'select2',
                'custom-scrollbar',
                'datepicker',
                'spectrum',
                'fancybox',
            ])
            ->removeScripts([
                'excanvas',
                'ie8-fix',
                'modernizr',
                'select2',
                'datepicker',
                'cookie',
                'toastr',
                'custom-scrollbar',
                'stickytableheaders',
                'jquery-waypoints',
                'spectrum',
                'fancybox',
                'fslightbox',
            ]);
    @endphp
    {!!  Assets::renderHeader(['core']) !!}

    <link
        href="{{ BaseHelper::getGoogleFontsURL() }}"
        rel="preconnect"
    >
    <link
        href="{{ BaseHelper::getGoogleFontsURL('css2?family=Inter:wght@100;200;300;400;500;600;700;800;900&display=swap') }}"
        rel="stylesheet"
    >

    @yield('styles')
</head>

<body>
    @php
        use Botble\Installer\InstallerStep\InstallerStep;

        $currentStep = InstallerStep::currentStep();
    @endphp

    <div class="page-wrapper justify-content-center min-h-full">
        <div class="page-body page-content">
            <div class="container-xl installer-container">
                <div class="row mb-4 text-center">
                    <div class="col">
                        <div class="d-inline-flex align-items-center gap-2 px-3 py-1 bg-white bg-opacity-25 text-white rounded-pill mb-2 font-weight-bold" style="font-size: 13px; backdrop-filter: blur(4px);">
                            <span>✨ Auromind AI Platform</span>
                        </div>
                        <h2 class="h1 page-title justify-content-center text-white fw-bold mb-0">
                            {{ trans('packages/installer::installer.title') }}
                        </h2>
                    </div>
                </div>

                <div class="row installer-wrapper">
                    <div class="col-md-3 p-4">
                        <div class="steps-backdrop"></div>
                        <x-core::step :counter="true" :vertical="true">
                            @foreach(InstallerStep::getItems() as $step)
                                <x-core::step.item :is-active="$currentStep === $loop->iteration">
                                    @if($step->getRoute() && $currentStep > $loop->iteration)
                                        <a href="{{ route($step->getRoute()) }}">{{ $step->getLabel() }}</a>
                                    @else
                                        {{ $step->getLabel() }}
                                    @endif
                                </x-core::step.item>
                            @endforeach
                        </x-core::step>
                    </div>
                    <div class="col-md-9 p-0">
                        <x-core::card class="h-100">
                            @hasSection('header')
                                <x-core::card.header>
                                    @yield('header')
                                </x-core::card.header>
                            @endif

                            <x-core::card.body>
                                @include('packages/installer::partials.alert')

                                @yield('content')
                            </x-core::card.body>

                            @hasSection('footer')
                                <x-core::card.footer class="d-flex justify-content-end">
                                    @yield('footer')
                                </x-core::card.footer>
                            @endif
                        </x-core::card>
                    </div>
                </div>
            </div>
        </div>
    </div>

    {!!  Assets::renderFooter() !!}

    <script type="text/javascript">
        var BotbleVariables = BotbleVariables || {
            languages: {
                notices_msg: {{ Js::from(trans('core/base::notices')) }},
            },
        };
    </script>

    @push('footer')
        @if (Session::has('success_msg') || Session::has('error_msg') || (isset($errors) && $errors->any()) || isset($error_msg))
            <script type="text/javascript">
                $(function() {
                    @if (Session::has('success_msg'))
                    Botble.showSuccess('{{ session('success_msg') }}');
                    @endif
                    @if (Session::has('error_msg'))
                    Botble.showError('{{ session('error_msg') }}');
                    @endif
                    @if (isset($error_msg))
                    Botble.showError('{{ $error_msg }}');
                    @endif
                    @if (isset($errors))
                    @foreach ($errors->all() as $error)
                    Botble.showError('{{ $error }}');
                    @endforeach
                    @endif
                })
            </script>
        @endif
    @endpush

    @yield('scripts')
</body>
</html>
