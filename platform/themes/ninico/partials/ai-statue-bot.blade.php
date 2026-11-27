<div id="tse-ai-statue-bot" class="tse-ai-bot-root">
    <!-- Floating Trigger Pill / Avatar Button -->
    <div id="tse-ai-bot-trigger" class="tse-ai-trigger" title="AI Statue Preview">
        <div class="tse-ai-trigger-pulse"></div>
        <div class="tse-ai-trigger-avatar">
            <span class="tse-ai-trigger-icon">🗿</span>
            <span class="tse-ai-sparkle-badge">✨</span>
        </div>
        <div class="tse-ai-trigger-text">
            <span class="tse-ai-trigger-title">AI Statue Preview</span>
            <span class="tse-ai-trigger-subtitle">Turn photo to 3D statue</span>
        </div>
        <span class="tse-ai-ping-dot"></span>
    </div>

    <!-- Chatbot Modal Window -->
    <div id="tse-ai-bot-window" class="tse-ai-window" style="display: none;">
        <!-- Header -->
        <div class="tse-ai-window-header">
            <div class="tse-ai-header-profile">
                <div class="tse-ai-header-avatar">
                    <span>🗿</span>
                    <span class="tse-ai-online-indicator"></span>
                </div>
                <div class="tse-ai-header-info">
                    <h4 class="tse-ai-header-name">Rainbow AI Sculptor</h4>
                    <p class="tse-ai-header-desc">Instant 3D Handcrafted Preview</p>
                </div>
            </div>
            <div class="tse-ai-header-actions">
                <button type="button" id="tse-ai-btn-minimize" class="tse-ai-hdr-btn" title="Minimize">
                    <i class="fas fa-minus"></i>
                </button>
                <button type="button" id="tse-ai-btn-close" class="tse-ai-hdr-btn" title="Close">
                    <i class="fas fa-times"></i>
                </button>
            </div>
        </div>

        <!-- Chat Conversation Body -->
        <div class="tse-ai-window-body" id="tse-ai-chat-body">
            <!-- Bot Welcome Bubble 1 -->
            <div class="tse-ai-msg tse-ai-msg-bot">
                <div class="tse-ai-msg-avatar">🗿</div>
                <div class="tse-ai-msg-bubble">
                    <p class="mb-0"><strong>Namaste! 🙏</strong> Want to see what your photo looks like as a real handcrafted 3D statue before you order?</p>
                </div>
            </div>

            <!-- Bot Welcome Bubble 2 -->
            <div class="tse-ai-msg tse-ai-msg-bot">
                <div class="tse-ai-msg-avatar">🗿</div>
                <div class="tse-ai-msg-bubble">
                    <p class="mb-0">Upload a clear photo (single portrait, couple, family, or pet). Our AI sculptor will carve an original 3D statue preview for you!</p>
                </div>
            </div>

            <!-- Interactive Workspace Card -->
            <div class="tse-ai-card" id="tse-ai-input-card">
                <!-- Dropzone / File Picker -->
                <div class="tse-ai-dropzone" id="tse-ai-dropzone">
                    <input type="file" id="tse-ai-file-input" accept="image/jpeg,image/png,image/webp,image/jpg" style="display: none;">
                    
                    <div id="tse-ai-dz-empty" class="tse-ai-dz-content">
                        <div class="tse-ai-dz-icon">
                            <i class="fas fa-cloud-upload-alt"></i>
                        </div>
                        <p class="tse-ai-dz-title">Click to upload your photo</p>
                        <p class="tse-ai-dz-sub">or drag & drop here (JPG, PNG, WEBP)</p>
                    </div>

                    <!-- Selected Photo Preview (Hidden initially) -->
                    <div id="tse-ai-dz-preview" class="tse-ai-dz-preview" style="display: none;">
                        <img id="tse-ai-preview-img" src="" alt="Selected Photo">
                        <button type="button" id="tse-ai-btn-remove-photo" class="tse-ai-btn-remove" title="Remove photo">
                            <i class="fas fa-times"></i>
                        </button>
                        <div class="tse-ai-preview-badge">Ready to Sculpt</div>
                    </div>
                </div>

                <!-- Statue Style Selector -->
                <div class="tse-ai-style-selector mt-15">
                    <label class="tse-ai-label">Choose Statue Finish:</label>
                    <div class="tse-ai-styles-grid">
                        <button type="button" class="tse-ai-style-pill active" data-style="clay">
                            <span class="tse-ai-style-emoji">🎨</span>
                            <span class="tse-ai-style-txt">Lifelike Clay</span>
                        </button>
                        <button type="button" class="tse-ai-style-pill" data-style="bronze">
                            <span class="tse-ai-style-emoji">🏛️</span>
                            <span class="tse-ai-style-txt">Royal Bronze</span>
                        </button>
                        <button type="button" class="tse-ai-style-pill" data-style="marble">
                            <span class="tse-ai-style-emoji">🕊️</span>
                            <span class="tse-ai-style-txt">White Marble</span>
                        </button>
                        <button type="button" class="tse-ai-style-pill" data-style="wood">
                            <span class="tse-ai-style-emoji">🪵</span>
                            <span class="tse-ai-style-txt">Sandalwood</span>
                        </button>
                    </div>
                </div>

                <!-- Action Button -->
                <button type="button" id="tse-ai-btn-sculpt" class="tse-ai-btn-sculpt mt-15" disabled>
                    <span class="tse-ai-btn-icon">✨</span>
                    <span>Transform to 3D Statue Preview</span>
                </button>

                <p class="tse-ai-note mt-10">
                    <i class="fas fa-shield-alt"></i> Powered by Stability AI • Free preview
                </p>
            </div>

            <!-- Sculpting State (Hidden initially) -->
            <div id="tse-ai-sculpting-state" class="tse-ai-sculpting-card" style="display: none;">
                <div class="tse-ai-chisel-anim">
                    <span class="tse-ai-sculptor-icon">🗿</span>
                    <span class="tse-ai-chisel-sparkle">✨</span>
                </div>
                <h5 class="tse-ai-sculpting-title" id="tse-ai-sculpting-status">Sculpting your 3D statue...</h5>
                <p class="tse-ai-sculpting-sub" id="tse-ai-sculpting-sub">Analyzing facial features and silhouettes</p>
                <div class="tse-ai-progress-track">
                    <div class="tse-ai-progress-bar" id="tse-ai-progress-bar"></div>
                </div>
            </div>

            <!-- Result Card (Hidden initially) -->
            <div id="tse-ai-result-card" class="tse-ai-result-card" style="display: none;">
                <div class="tse-ai-msg tse-ai-msg-bot mb-15">
                    <div class="tse-ai-msg-avatar">🗿</div>
                    <div class="tse-ai-msg-bubble tse-ai-bubble-success">
                        <p class="mb-0"><strong>🎉 Your 3D Statue Preview is Ready!</strong> Here is how your photo transforms into a handcrafted commemorative statue:</p>
                    </div>
                </div>

                <!-- Image Comparison View -->
                <div class="tse-ai-result-display">
                    <div class="tse-ai-img-frame">
                        <img id="tse-ai-statue-result-img" src="" alt="AI Statue Preview" class="tse-ai-img active">
                        <img id="tse-ai-orig-result-img" src="" alt="Original Photo" class="tse-ai-img" style="display: none;">
                        <span class="tse-ai-img-tag" id="tse-ai-img-tag">3D Statue Preview</span>
                    </div>

                    <!-- Toggle Comparison Tabs -->
                    <div class="tse-ai-toggle-tabs mt-10">
                        <button type="button" class="tse-ai-tab-btn active" id="tse-ai-tab-statue">
                            <span>🗿 3D Statue</span>
                        </button>
                        <button type="button" class="tse-ai-tab-btn" id="tse-ai-tab-orig">
                            <span>📷 Original Photo</span>
                        </button>
                    </div>
                </div>

                <!-- Result Actions -->
                <div class="tse-ai-result-actions mt-15">
                    <a id="tse-ai-btn-download" href="#" download="rainbow_statue_preview.webp" class="tse-ai-btn-action tse-ai-btn-dl" target="_blank">
                        <i class="fas fa-download"></i> Download Preview
                    </a>
                    <a id="tse-ai-btn-whatsapp" href="#" target="_blank" class="tse-ai-btn-action tse-ai-btn-wa">
                        <i class="fab fa-whatsapp"></i> Order Real Statue on WhatsApp
                    </a>
                    <button type="button" id="tse-ai-btn-apply-order" class="tse-ai-btn-action tse-ai-btn-order" style="display: none;">
                        <i class="fas fa-gem"></i> Use This Photo For Consultation
                    </button>
                    <button type="button" id="tse-ai-btn-reset" class="tse-ai-btn-action tse-ai-btn-reset mt-5">
                        <i class="fas fa-redo-alt"></i> Try Another Photo
                    </button>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
(function() {
    'use strict';

    document.addEventListener('DOMContentLoaded', function() {
        var botRoot = document.getElementById('tse-ai-statue-bot');
        if (!botRoot) return;

        var trigger = document.getElementById('tse-ai-bot-trigger');
        var win = document.getElementById('tse-ai-bot-window');
        var btnClose = document.getElementById('tse-ai-btn-close');
        var btnMinimize = document.getElementById('tse-ai-btn-minimize');
        var dropzone = document.getElementById('tse-ai-dropzone');
        var fileInput = document.getElementById('tse-ai-file-input');
        var dzEmpty = document.getElementById('tse-ai-dz-empty');
        var dzPreview = document.getElementById('tse-ai-dz-preview');
        var previewImg = document.getElementById('tse-ai-preview-img');
        var btnRemovePhoto = document.getElementById('tse-ai-btn-remove-photo');
        var btnSculpt = document.getElementById('tse-ai-btn-sculpt');
        var stylePills = document.querySelectorAll('.tse-ai-style-pill');
        var inputCard = document.getElementById('tse-ai-input-card');
        var sculptingState = document.getElementById('tse-ai-sculpting-state');
        var sculptingStatus = document.getElementById('tse-ai-sculpting-status');
        var sculptingSub = document.getElementById('tse-ai-sculpting-sub');
        var resultCard = document.getElementById('tse-ai-result-card');
        var statueResultImg = document.getElementById('tse-ai-statue-result-img');
        var origResultImg = document.getElementById('tse-ai-orig-result-img');
        var imgTag = document.getElementById('tse-ai-img-tag');
        var tabStatue = document.getElementById('tse-ai-tab-statue');
        var tabOrig = document.getElementById('tse-ai-tab-orig');
        var btnDownload = document.getElementById('tse-ai-btn-download');
        var btnWhatsApp = document.getElementById('tse-ai-btn-whatsapp');
        var btnApplyOrder = document.getElementById('tse-ai-btn-apply-order');
        var btnReset = document.getElementById('tse-ai-btn-reset');
        var chatBody = document.getElementById('tse-ai-chat-body');

        var selectedFile = null;
        var selectedStyle = 'clay';
        var lastStatueUrl = '';
        var lastOriginalUrl = '';

        // Check if on product consultation page
        var pageOrderForm = document.getElementById('tse-custom-order-form');
        if (pageOrderForm && btnApplyOrder) {
            btnApplyOrder.style.display = 'inline-flex';
        }

        // Toggle window
        function toggleWindow(open) {
            if (open === undefined) {
                open = win.style.display === 'none';
            }
            if (open) {
                win.style.display = 'flex';
                trigger.classList.add('active');
                scrollToBottom();
            } else {
                win.style.display = 'none';
                trigger.classList.remove('active');
            }
        }

        trigger.addEventListener('click', function(e) {
            e.stopPropagation();
            toggleWindow();
        });

        if (btnClose) btnClose.addEventListener('click', function() { toggleWindow(false); });
        if (btnMinimize) btnMinimize.addEventListener('click', function() { toggleWindow(false); });

        // Dropzone click
        dropzone.addEventListener('click', function(e) {
            if (e.target.closest('#tse-ai-btn-remove-photo')) return;
            fileInput.click();
        });

        // Drag & drop
        ['dragenter', 'dragover'].forEach(function(eventName) {
            dropzone.addEventListener(eventName, function(e) {
                e.preventDefault();
                e.stopPropagation();
                dropzone.classList.add('tse-ai-dragover');
            });
        });

        ['dragleave', 'drop'].forEach(function(eventName) {
            dropzone.addEventListener(eventName, function(e) {
                e.preventDefault();
                e.stopPropagation();
                dropzone.classList.remove('tse-ai-dragover');
            });
        });

        dropzone.addEventListener('drop', function(e) {
            if (e.dataTransfer.files && e.dataTransfer.files[0]) {
                handleFile(e.dataTransfer.files[0]);
            }
        });

        fileInput.addEventListener('change', function() {
            if (fileInput.files && fileInput.files[0]) {
                handleFile(fileInput.files[0]);
            }
        });

        function handleFile(file) {
            if (!file.type.match(/^image\//)) {
                alert('Please select an image file (JPG, PNG, or WEBP).');
                return;
            }
            selectedFile = file;

            var reader = new FileReader();
            reader.onload = function(e) {
                previewImg.src = e.target.result;
                dzEmpty.style.display = 'none';
                dzPreview.style.display = 'block';
                btnSculpt.removeAttribute('disabled');
                scrollToBottom();
            };
            reader.readAsDataURL(file);
        }

        btnRemovePhoto.addEventListener('click', function(e) {
            e.stopPropagation();
            selectedFile = null;
            fileInput.value = '';
            previewImg.src = '';
            dzEmpty.style.display = 'flex';
            dzPreview.style.display = 'none';
            btnSculpt.setAttribute('disabled', 'disabled');
        });

        // Style selection
        stylePills.forEach(function(pill) {
            pill.addEventListener('click', function() {
                stylePills.forEach(function(p) { p.classList.remove('active'); });
                pill.classList.add('active');
                selectedStyle = pill.getAttribute('data-style') || 'clay';
            });
        });

        // Sculpt action
        btnSculpt.addEventListener('click', function() {
            if (!selectedFile) return;

            // Show sculpting state
            inputCard.style.display = 'none';
            sculptingState.style.display = 'block';
            resultCard.style.display = 'none';
            scrollToBottom();

            // Rotate progress messages
            var messages = [
                { title: 'Sculpting your 3D statue...', sub: 'Analyzing facial features and silhouettes' },
                { title: 'Chiseling 3D proportions...', sub: 'Shaping commemorative miniature sculpture' },
                { title: 'Applying artisan textures...', sub: 'Adding realistic handcrafted finishes and pedestal' },
                { title: 'Final museum polish...', sub: 'Rendering lifelike gallery lighting and details' }
            ];
            var msgIdx = 0;
            var timer = setInterval(function() {
                msgIdx = (msgIdx + 1) % messages.length;
                sculptingStatus.textContent = messages[msgIdx].title;
                sculptingSub.textContent = messages[msgIdx].sub;
            }, 2600);

            // Compress image client-side if needed to optimize upload
            compressImageIfNeeded(selectedFile, function(preparedFile) {
                var formData = new FormData();
                formData.append('image', preparedFile);
                formData.append('style', selectedStyle);

                var csrfMeta = document.querySelector('meta[name="csrf-token"]');
                var csrfToken = csrfMeta ? csrfMeta.getAttribute('content') : '';

                var targetUrl = '{{ route("public.ajax.ai-statue-preview", [], false) }}';

                fetch(targetUrl, {
                    method: 'POST',
                    headers: {
                        'X-CSRF-TOKEN': csrfToken,
                        'X-Requested-With': 'XMLHttpRequest',
                        'Accept': 'application/json'
                    },
                    body: formData
                })
                .then(function(res) {
                    clearInterval(timer);
                    return res.json().then(function(data) {
                        return { ok: res.ok, status: res.status, data: data };
                    });
                })
                .then(function(result) {
                    if (!result.ok || (result.data && result.data.error)) {
                        var errMsg = (result.data && result.data.message) ? result.data.message : 'AI sculptor service is temporarily unavailable. Please try again.';
                        throw new Error(errMsg);
                    }

                    var payload = result.data.data || {};
                    lastStatueUrl = payload.statue_url;
                    lastOriginalUrl = payload.original_url;

                    // Display results
                    statueResultImg.src = lastStatueUrl;
                    origResultImg.src = lastOriginalUrl;
                    btnDownload.href = lastStatueUrl;

                    // WhatsApp link
                    var waText = encodeURI('Hi Rainbow Gallery! I used your AI Statue Preview and would like to order the handcrafted real statue! Preview URL: ' + window.location.origin + lastStatueUrl);
                    btnWhatsApp.href = 'https://wa.me/919444390311?text=' + waText;

                    sculptingState.style.display = 'none';
                    resultCard.style.display = 'block';
                    showStatueTab(true);
                    scrollToBottom();
                })
                .catch(function(err) {
                    clearInterval(timer);
                    sculptingState.style.display = 'none';
                    inputCard.style.display = 'block';
                    alert('⚠️ Notice: ' + err.message);
                    scrollToBottom();
                });
            });
        });

        // Tab toggle
        function showStatueTab(isStatue) {
            if (isStatue) {
                tabStatue.classList.add('active');
                tabOrig.classList.remove('active');
                statueResultImg.style.display = 'block';
                origResultImg.style.display = 'none';
                imgTag.textContent = '3D Statue Preview';
            } else {
                tabOrig.classList.add('active');
                tabStatue.classList.remove('active');
                statueResultImg.style.display = 'none';
                origResultImg.style.display = 'block';
                imgTag.textContent = 'Original Photo';
            }
        }

        tabStatue.addEventListener('click', function() { showStatueTab(true); });
        tabOrig.addEventListener('click', function() { showStatueTab(false); });

        // Apply photo to page consultation form
        if (btnApplyOrder && pageOrderForm) {
            btnApplyOrder.addEventListener('click', function() {
                toggleWindow(false);

                // Transfer file to page order form if possible
                var pageFileInput = document.getElementById('tse_custom_photo');
                if (pageFileInput && selectedFile) {
                    try {
                        var dataTransfer = new DataTransfer();
                        dataTransfer.items.add(selectedFile);
                        pageFileInput.files = dataTransfer.files;
                        pageFileInput.dispatchEvent(new Event('change', { bubbles: true }));
                    } catch (e) {
                        console.log('Direct DataTransfer not supported, triggering click');
                    }
                }

                // Scroll to custom order section
                var formSection = document.getElementById('tse-artisan-order-section');
                if (formSection) {
                    formSection.scrollIntoView({ behavior: 'smooth', block: 'center' });
                }
            });
        }

        // Reset
        btnReset.addEventListener('click', function() {
            resultCard.style.display = 'none';
            inputCard.style.display = 'block';
            dzEmpty.style.display = 'flex';
            dzPreview.style.display = 'none';
            fileInput.value = '';
            selectedFile = null;
            btnSculpt.setAttribute('disabled', 'disabled');
            scrollToBottom();
        });

        function scrollToBottom() {
            setTimeout(function() {
                chatBody.scrollTop = chatBody.scrollHeight;
            }, 100);
        }

        function compressImageIfNeeded(file, callback) {
            if (file.size <= 2 * 1024 * 1024) {
                return callback(file);
            }
            var reader = new FileReader();
            reader.onload = function(e) {
                var img = new Image();
                img.onload = function() {
                    var maxDim = 1200;
                    var w = img.width;
                    var h = img.height;
                    if (w > maxDim || h > maxDim) {
                        if (w > h) {
                            h = Math.round((h * maxDim) / w);
                            w = maxDim;
                        } else {
                            w = Math.round((w * maxDim) / h);
                            h = maxDim;
                        }
                    }
                    var canvas = document.createElement('canvas');
                    canvas.width = w;
                    canvas.height = h;
                    var ctx = canvas.getContext('2d');
                    ctx.drawImage(img, 0, 0, w, h);
                    canvas.toBlob(function(blob) {
                        if (blob) {
                            var newFile = new File([blob], file.name.replace(/\.[^.]+$/, '.jpg'), { type: 'image/jpeg' });
                            callback(newFile);
                        } else {
                            callback(file);
                        }
                    }, 'image/jpeg', 0.88);
                };
                img.src = e.target.result;
            };
            reader.readAsDataURL(file);
        }
    });
})();
</script>