<section class="tse-3d-studio-section" id="tse-3d-studio-section">
    <div class="container">
        <!-- Section Header -->
        <div class="row justify-content-center text-center mb-35">
            <div class="col-lg-8 col-md-10">
                <div class="tse-3d-pill-badge mb-12">
                    <span class="tse-3d-pill-pulse"></span>
                    <i class="fas fa-cube"></i> INTERACTIVE 3D STATUE STUDIO
                </div>
                <h2 class="tse-3d-section-title">
                    Experience Sculptures in <span>Full 360° 3D</span>
                </h2>
                <p class="tse-3d-section-desc">
                    Rotate in 360°, inspect hand-chiseled facial contours, and switch between 4 luxury finishes before commissioning your custom handcrafted statue.
                </p>
            </div>
        </div>

        <!-- 3D Studio Main Stage -->
        <div class="row g-4 align-items-center">
            <!-- 3D Canvas Column -->
            <div class="col-lg-8 col-12">
                <div class="tse-3d-stage-card">
                    <!-- Top Bar Badges -->
                    <div class="tse-3d-stage-topbar">
                        <div class="tse-3d-live-tag">
                            <span class="tse-3d-dot-blink"></span> 3D REALTIME VIEWPORT
                        </div>
                        <div class="tse-3d-hint">
                            <i class="fal fa-hand-pointer"></i> <span>Drag to rotate • Scroll to zoom</span>
                        </div>
                    </div>

                    <!-- 3D WebGL Canvas Container -->
                    <div id="tse-3d-canvas-wrap" class="tse-3d-canvas-wrap">
                        <canvas id="tse-3d-canvas"></canvas>
                        
                        <!-- Loading State -->
                        <div id="tse-3d-loader" class="tse-3d-loader">
                            <div class="tse-3d-spinner"></div>
                            <span>Initializing 3D Studio...</span>
                        </div>

                        <!-- 3D Hotspot Overlays (Interactive Annotations) -->
                        <div class="tse-3d-hotspot" id="tse-hotspot-face" style="top: 28%; left: 50%;">
                            <button class="tse-hotspot-pin" type="button" aria-label="Facial Details">
                                <span>1</span>
                            </button>
                            <div class="tse-hotspot-card">
                                <strong>99.8% Facial Contour Fidelity</strong>
                                <p>Sculpted with micron-level digital depth mapping capturing authentic expressions, bone structure & smile.</p>
                            </div>
                        </div>

                        <div class="tse-3d-hotspot" id="tse-hotspot-drapery" style="top: 55%; left: 38%;">
                            <button class="tse-hotspot-pin" type="button" aria-label="Drapery & Attire">
                                <span>2</span>
                            </button>
                            <div class="tse-hotspot-card">
                                <strong>Hand-Carved Fabric & Folds</strong>
                                <p>Individual ripples, pleats, and jewelry ornaments handcrafted by veteran traditional sculptors.</p>
                            </div>
                        </div>

                        <div class="tse-3d-hotspot" id="tse-hotspot-base" style="top: 80%; left: 60%;">
                            <button class="tse-hotspot-pin" type="button" aria-label="Weighted Pedestal">
                                <span>3</span>
                            </button>
                            <div class="tse-hotspot-card">
                                <strong>Velvet Weighted Pedestal</strong>
                                <p>Heavy felt-padded marble-finish plinth with optional custom laser-engraved gold nameplate.</p>
                            </div>
                        </div>
                    </div>

                    <!-- Stage Bottom Floating Controls -->
                    <div class="tse-3d-stage-controls">
                        <div class="tse-3d-ctrl-group">
                            <button type="button" class="tse-3d-ctrl-btn" id="tse-btn-autorotate" title="Toggle Auto-Spin">
                                <i class="fas fa-sync-alt"></i> <span id="tse-autorotate-label">Auto-Spin: ON</span>
                            </button>
                            <button type="button" class="tse-3d-ctrl-btn" id="tse-btn-reset" title="Reset Camera">
                                <i class="fas fa-undo"></i> <span>Reset Angle</span>
                            </button>
                            <button type="button" class="tse-3d-ctrl-btn" id="tse-btn-zoom-in" title="Zoom In">
                                <i class="fas fa-search-plus"></i>
                            </button>
                            <button type="button" class="tse-3d-ctrl-btn" id="tse-btn-zoom-out" title="Zoom Out">
                                <i class="fas fa-search-minus"></i>
                            </button>
                        </div>
                    </div>
                </div>

                <!-- 4 Material Finishes Switcher -->
                <div class="tse-3d-materials-bar mt-15">
                    <span class="tse-3d-mat-heading"><i class="fas fa-palette"></i> Select Material Finish:</span>
                    <div class="tse-3d-mat-pills" id="tse-material-pills">
                        <button type="button" class="tse-3d-mat-pill active" data-material="clay">
                            <span class="tse-mat-swatch tse-mat-clay"></span>
                            <span class="tse-mat-name">Lifelike Clay</span>
                            <span class="tse-mat-tag">Popular</span>
                        </button>
                        <button type="button" class="tse-3d-mat-pill" data-material="bronze">
                            <span class="tse-mat-swatch tse-mat-bronze"></span>
                            <span class="tse-mat-name">Antique Bronze</span>
                            <span class="tse-mat-tag">Royal</span>
                        </button>
                        <button type="button" class="tse-3d-mat-pill" data-material="marble">
                            <span class="tse-mat-swatch tse-mat-marble"></span>
                            <span class="tse-mat-name">Carrara Marble</span>
                            <span class="tse-mat-tag">Classic</span>
                        </button>
                        <button type="button" class="tse-3d-mat-pill" data-material="sandalwood">
                            <span class="tse-mat-swatch tse-mat-wood"></span>
                            <span class="tse-mat-name">Sandalwood</span>
                            <span class="tse-mat-tag">Sacred</span>
                        </button>
                    </div>
                </div>
            </div>

            <!-- Right Detail & Action Column -->
            <div class="col-lg-4 col-12">
                <div class="tse-3d-info-card">
                    <!-- Current Material Overview -->
                    <div class="tse-3d-info-header">
                        <span class="tse-3d-active-mat-badge" id="tse-active-mat-badge">🏺 Lifelike Hand-Painted Clay</span>
                        <h3 class="tse-3d-info-title" id="tse-info-title">Custom 3D Handcrafted Figurine</h3>
                        <p class="tse-3d-info-desc" id="tse-info-desc">
                            Vibrant natural polychrome painted with high-pigment acrylics. Hand-detailed to match skin tone, clothing shades, hair textures and authentic facial warmth.
                        </p>
                    </div>

                    <!-- Craftsmanship Metrics List -->
                    <div class="tse-3d-specs-list">
                        <div class="tse-3d-spec-row">
                            <div class="tse-3d-spec-icon"><i class="fas fa-gem"></i></div>
                            <div class="tse-3d-spec-content">
                                <span class="tse-3d-spec-label">Craftsmanship</span>
                                <strong class="tse-3d-spec-val">Micro-Sculpted Polyresin Core</strong>
                            </div>
                        </div>

                        <div class="tse-3d-spec-row">
                            <div class="tse-3d-spec-icon"><i class="fas fa-ruler-combined"></i></div>
                            <div class="tse-3d-spec-content">
                                <span class="tse-3d-spec-label">Available Sizes</span>
                                <strong class="tse-3d-spec-val">6" • 8" • 10" • 12" • Life-Size</strong>
                            </div>
                        </div>

                        <div class="tse-3d-spec-row">
                            <div class="tse-3d-spec-icon"><i class="fas fa-shield-alt"></i></div>
                            <div class="tse-3d-spec-content">
                                <span class="tse-3d-spec-label">Protection</span>
                                <strong class="tse-3d-spec-val">Anti-UV & Moisture Shield Coating</strong>
                            </div>
                        </div>

                        <div class="tse-3d-spec-row">
                            <div class="tse-3d-spec-icon"><i class="fas fa-box-heart"></i></div>
                            <div class="tse-3d-spec-content">
                                <span class="tse-3d-spec-label">Presentation</span>
                                <strong class="tse-3d-spec-val">Silk-Lined Wooden Keepsake Case</strong>
                            </div>
                        </div>
                    </div>

                    <!-- Direct Conversion Actions -->
                    <div class="tse-3d-actions mt-25">
                        <button type="button" class="tse-3d-btn-main" onclick="if(window.openAiStatueBot) { window.openAiStatueBot(); } else { document.getElementById('tse-ai-bot-trigger')?.click(); }">
                            <i class="fas fa-magic"></i>
                            <span>Transform Your Photo Into 3D</span>
                            <i class="fal fa-arrow-right"></i>
                        </button>

                        <a href="https://wa.me/919084085018?text=Hello%20Rainbow%20Gallery,%20I%20am%20interested%20in%20customizing%20a%203D%20statue." target="_blank" rel="noopener" class="tse-3d-btn-whatsapp">
                            <i class="fab fa-whatsapp"></i>
                            <span>Inquire via WhatsApp</span>
                        </a>

                        <div class="tse-3d-guarantee-note">
                            <i class="fas fa-check-circle"></i> 100% Likeness Approval Before Final Casting
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Include Three.js & OrbitControls -->
<script src="{{ Theme::asset()->url('plugins/three/three.min.js') }}"></script>
<script src="{{ Theme::asset()->url('plugins/three/OrbitControls.js') }}"></script>

<script>
(function() {
    'use strict';

    function init3DStudio() {
        if (typeof THREE === 'undefined' || typeof THREE.OrbitControls === 'undefined') {
            setTimeout(init3DStudio, 80);
            return;
        }

        var canvasWrap = document.getElementById('tse-3d-canvas-wrap');
        var canvas = document.getElementById('tse-3d-canvas');
        var loader = document.getElementById('tse-3d-loader');
        if (!canvasWrap || !canvas) return;

        var width = canvasWrap.clientWidth || 700;
        var height = Math.min(Math.max(window.innerWidth < 768 ? 360 : 500, 360), 540);
        canvasWrap.style.height = height + 'px';

        // 1. Scene, Camera, Renderer
        var scene = new THREE.Scene();
        scene.background = new THREE.Color(0x0e1726);

        var camera = new THREE.PerspectiveCamera(36, width / height, 0.1, 100);
        camera.position.set(0, 1.2, 5.2);

        var renderer = new THREE.WebGLRenderer({
            canvas: canvas,
            antialias: true,
            alpha: false,
            powerPreference: 'high-performance'
        });
        renderer.setSize(width, height);
        renderer.setPixelRatio(Math.min(window.devicePixelRatio, 2));
        renderer.shadowMap.enabled = true;
        renderer.shadowMap.type = THREE.PCFSoftShadowMap;
        renderer.toneMapping = THREE.ACESFilmicToneMapping;
        renderer.toneMappingExposure = 1.15;

        // 2. Orbit Controls
        var controls = new THREE.OrbitControls(camera, renderer.domElement);
        controls.enableDamping = true;
        controls.dampingFactor = 0.05;
        controls.autoRotate = true;
        controls.autoRotateSpeed = 1.8;
        controls.minDistance = 3.2;
        controls.maxDistance = 7.5;
        controls.minPolarAngle = Math.PI / 4.5;
        controls.maxPolarAngle = Math.PI / 1.85;
        controls.target.set(0, 0.35, 0);
        controls.update();

        // 3. Studio Lighting
        var ambientLight = new THREE.AmbientLight(0xffffff, 0.65);
        scene.add(ambientLight);

        // Key Light (Warm Front-Right)
        var keyLight = new THREE.DirectionalLight(0xfffaed, 1.4);
        keyLight.position.set(3.5, 4.5, 3.5);
        keyLight.castShadow = true;
        keyLight.shadow.mapSize.width = 1024;
        keyLight.shadow.mapSize.height = 1024;
        keyLight.shadow.bias = -0.0008;
        scene.add(keyLight);

        // Fill Light (Cool Soft Left)
        var fillLight = new THREE.DirectionalLight(0xd9ebff, 0.8);
        fillLight.position.set(-3.5, 2.5, 2.0);
        scene.add(fillLight);

        // Golden Rim Light (Backlight highlight)
        var rimLight = new THREE.DirectionalLight(0xffb74d, 1.6);
        rimLight.position.set(0, 4.0, -3.5);
        scene.add(rimLight);

        // 4. Materials Setup
        var materials = {
            clay: new THREE.MeshStandardMaterial({
                color: 0xdeb887,
                roughness: 0.52,
                metalness: 0.05
            }),
            bronze: new THREE.MeshStandardMaterial({
                color: 0xa8773e,
                roughness: 0.28,
                metalness: 0.85
            }),
            marble: new THREE.MeshStandardMaterial({
                color: 0xf4f4f2,
                roughness: 0.18,
                metalness: 0.04
            }),
            sandalwood: new THREE.MeshStandardMaterial({
                color: 0x9e5f2b,
                roughness: 0.65,
                metalness: 0.08
            })
        };

        var statueGroup = new THREE.Group();
        scene.add(statueGroup);

        // 5. Build Neoclassical Marble & Gold Pedestal
        var pedestalGroup = new THREE.Group();

        // Octagonal Base Plinth
        var baseGeo = new THREE.CylinderGeometry(1.4, 1.5, 0.2, 32);
        var baseMat = new THREE.MeshStandardMaterial({ color: 0x182030, roughness: 0.35, metalness: 0.2 });
        var baseMesh = new THREE.Mesh(baseGeo, baseMat);
        baseMesh.position.y = -1.0;
        baseMesh.receiveShadow = true;
        pedestalGroup.add(baseMesh);

        // Gold Trim Torus Ring
        var ringGeo = new THREE.TorusGeometry(1.38, 0.035, 16, 64);
        var ringMat = new THREE.MeshStandardMaterial({ color: 0xe6a838, roughness: 0.22, metalness: 0.92 });
        var ringMesh = new THREE.Mesh(ringGeo, ringMat);
        ringMesh.rotation.x = Math.PI / 2;
        ringMesh.position.y = -0.88;
        pedestalGroup.add(ringMesh);

        // Upper Cylinder Turntable
        var upperGeo = new THREE.CylinderGeometry(1.22, 1.25, 0.32, 48);
        var upperMat = new THREE.MeshStandardMaterial({ color: 0x222d42, roughness: 0.3, metalness: 0.15 });
        var upperMesh = new THREE.Mesh(upperGeo, upperMat);
        upperMesh.position.y = -0.72;
        upperMesh.receiveShadow = true;
        pedestalGroup.add(upperMesh);

        // Top Gold Accent Rim
        var topRing = new THREE.Mesh(new THREE.TorusGeometry(1.23, 0.025, 16, 64), ringMat);
        topRing.rotation.x = Math.PI / 2;
        topRing.position.y = -0.55;
        pedestalGroup.add(topRing);

        scene.add(pedestalGroup);

        // Soft Circular Shadow Plane on floor
        var shadowGeo = new THREE.PlaneGeometry(3.6, 3.6);
        var shadowCanvas = document.createElement('canvas');
        shadowCanvas.width = 128;
        shadowCanvas.height = 128;
        var sCtx = shadowCanvas.getContext('2d');
        var grad = sCtx.createRadialGradient(64, 64, 10, 64, 64, 64);
        grad.addColorStop(0, 'rgba(0,0,0,0.65)');
        grad.addColorStop(0.5, 'rgba(0,0,0,0.3)');
        grad.addColorStop(1, 'rgba(0,0,0,0)');
        sCtx.fillStyle = grad;
        sCtx.fillRect(0, 0, 128, 128);

        var shadowTex = new THREE.CanvasTexture(shadowCanvas);
        var shadowMat = new THREE.MeshBasicMaterial({ map: shadowTex, transparent: true, opacity: 0.75, depthWrite: false });
        var shadowPlane = new THREE.Mesh(shadowGeo, shadowMat);
        shadowPlane.rotation.x = -Math.PI / 2;
        shadowPlane.position.y = -1.11;
        scene.add(shadowPlane);

        // 6. Build the Sculpted Figurine Statue (Anatomical Classical Bust with draped attire)
        var currentMaterial = materials.clay;

        // Torso & Shoulder Drapery
        var torsoGeo = new THREE.CylinderGeometry(0.55, 0.82, 0.95, 32);
        var torsoMesh = new THREE.Mesh(torsoGeo, currentMaterial);
        torsoMesh.position.y = -0.05;
        torsoMesh.castShadow = true;
        torsoMesh.receiveShadow = true;
        statueGroup.add(torsoMesh);

        // Draped Shoulders Mantle
        var mantleGeo = new THREE.TorusGeometry(0.68, 0.22, 16, 32, Math.PI * 1.3);
        var mantleMesh = new THREE.Mesh(mantleGeo, currentMaterial);
        mantleMesh.rotation.x = Math.PI / 1.7;
        mantleMesh.rotation.z = -Math.PI * 0.15;
        mantleMesh.position.set(0, 0.15, 0.05);
        mantleMesh.castShadow = true;
        statueGroup.add(mantleMesh);

        // Neck
        var neckGeo = new THREE.CylinderGeometry(0.24, 0.28, 0.42, 24);
        var neckMesh = new THREE.Mesh(neckGeo, currentMaterial);
        neckMesh.position.y = 0.52;
        neckMesh.castShadow = true;
        statueGroup.add(neckMesh);

        // Head (Sculpted Oval)
        var headGeo = new THREE.SphereGeometry(0.42, 32, 28);
        headGeo.scale(0.88, 1.15, 0.95);
        var headMesh = new THREE.Mesh(headGeo, currentMaterial);
        headMesh.position.set(0, 0.95, 0.02);
        headMesh.castShadow = true;
        statueGroup.add(headMesh);

        // Nose Profile
        var noseGeo = new THREE.ConeGeometry(0.065, 0.18, 16);
        var noseMesh = new THREE.Mesh(noseGeo, currentMaterial);
        noseMesh.rotation.x = Math.PI / 2.2;
        noseMesh.position.set(0, 0.93, 0.41);
        statueGroup.add(noseMesh);

        // Crown / Hair Crest (Artisan classical curls)
        var hairGeo = new THREE.TorusGeometry(0.38, 0.14, 16, 32, Math.PI);
        var hairMesh = new THREE.Mesh(hairGeo, currentMaterial);
        hairMesh.rotation.x = -Math.PI / 3;
        hairMesh.position.set(0, 1.25, -0.06);
        hairMesh.castShadow = true;
        statueGroup.add(hairMesh);

        var hairBack = new THREE.Mesh(new THREE.SphereGeometry(0.35, 24, 20), currentMaterial);
        hairBack.scale.set(0.9, 0.9, 0.7);
        hairBack.position.set(0, 1.05, -0.25);
        statueGroup.add(hairBack);

        // Sacred Aura / Accent Halo (Fine gold halo)
        var haloGeo = new THREE.TorusGeometry(0.68, 0.015, 16, 64);
        var haloMat = new THREE.MeshStandardMaterial({ color: 0xffd54f, roughness: 0.15, metalness: 0.95, emissive: 0x332200 });
        var haloMesh = new THREE.Mesh(haloGeo, haloMat);
        haloMesh.position.set(0, 0.98, -0.15);
        statueGroup.add(haloMesh);

        // Group positioning
        statueGroup.position.y = 0.1;

        if (loader) {
            loader.style.opacity = '0';
            setTimeout(function() { loader.style.display = 'none'; }, 300);
        }

        // 7. Material Switching Logic
        var materialPills = document.querySelectorAll('.tse-3d-mat-pill');
        var matDescriptions = {
            clay: {
                badge: '🏺 Lifelike Hand-Painted Clay',
                title: 'Custom 3D Lifelike Clay Figurine',
                desc: 'Vibrant natural polychrome painted with high-pigment acrylics. Hand-detailed to match skin tone, clothing shades, hair textures and authentic facial warmth.'
            },
            bronze: {
                badge: '🏆 Royal Antique Cast Bronze',
                title: 'Royal Antique Patinated Bronze Statue',
                desc: 'Deep burnished bronze cast with warm golden highlights on drapery folds and facial contours. Resistant to weather, tarnishing, and age.'
            },
            marble: {
                badge: '🏛️ Pure Carrara White Marble',
                title: 'Classical Carrara White Marble Sculpture',
                desc: 'Pure pristine white marble aesthetic featuring silky smooth surface transitions, translucent specular depth, and museum neoclassical refinement.'
            },
            sandalwood: {
                badge: '🪵 Sacred Hand-Carved Sandalwood',
                title: 'Sacred Sandalwood Wooden Figurine',
                desc: 'Warm organic golden-amber tones with intricate wood-grain textures. Perfect for sacred home altars, puja mandirs, and cherished heirloom gifts.'
            }
        };

        function setMaterial(key) {
            var selectedMat = materials[key] || materials.clay;
            torsoMesh.material = selectedMat;
            mantleMesh.material = selectedMat;
            neckMesh.material = selectedMat;
            headMesh.material = selectedMat;
            noseMesh.material = selectedMat;
            hairMesh.material = selectedMat;
            hairBack.material = selectedMat;

            // Update UI
            materialPills.forEach(function(pill) {
                if (pill.getAttribute('data-material') === key) {
                    pill.classList.add('active');
                } else {
                    pill.classList.remove('active');
                }
            });

            var info = matDescriptions[key];
            if (info) {
                var badgeEl = document.getElementById('tse-active-mat-badge');
                var titleEl = document.getElementById('tse-info-title');
                var descEl = document.getElementById('tse-info-desc');
                if (badgeEl) badgeEl.textContent = info.badge;
                if (titleEl) titleEl.textContent = info.title;
                if (descEl) descEl.textContent = info.desc;
            }
        }

        materialPills.forEach(function(btn) {
            btn.addEventListener('click', function() {
                var matKey = this.getAttribute('data-material');
                setMaterial(matKey);
            });
        });

        // 8. Auto-Spin & Control Buttons
        var btnAuto = document.getElementById('tse-btn-autorotate');
        var lblAuto = document.getElementById('tse-autorotate-label');
        if (btnAuto) {
            btnAuto.addEventListener('click', function() {
                controls.autoRotate = !controls.autoRotate;
                if (lblAuto) lblAuto.textContent = 'Auto-Spin: ' + (controls.autoRotate ? 'ON' : 'OFF');
                btnAuto.classList.toggle('active', controls.autoRotate);
            });
        }

        var btnReset = document.getElementById('tse-btn-reset');
        if (btnReset) {
            btnReset.addEventListener('click', function() {
                camera.position.set(0, 1.2, 5.2);
                controls.target.set(0, 0.35, 0);
                controls.update();
            });
        }

        var btnZoomIn = document.getElementById('tse-btn-zoom-in');
        if (btnZoomIn) {
            btnZoomIn.addEventListener('click', function() {
                camera.position.multiplyScalar(0.85);
                controls.update();
            });
        }

        var btnZoomOut = document.getElementById('tse-btn-zoom-out');
        if (btnZoomOut) {
            btnZoomOut.addEventListener('click', function() {
                camera.position.multiplyScalar(1.15);
                controls.update();
            });
        }

        // 9. Resize Handling
        window.addEventListener('resize', function() {
            var newW = canvasWrap.clientWidth;
            var newH = Math.min(Math.max(window.innerWidth < 768 ? 360 : 500, 360), 540);
            camera.aspect = newW / newH;
            camera.updateProjectionMatrix();
            renderer.setSize(newW, newH);
        });

        // 10. Animation Loop
        function animate() {
            requestAnimationFrame(animate);
            controls.update();

            // Gentle turntable rotation
            pedestalGroup.rotation.y += 0.003;

            renderer.render(scene, camera);
        }
        animate();
    }

    if (document.readyState === 'loading') {
        document.addEventListener('DOMContentLoaded', init3DStudio);
    } else {
        init3DStudio();
    }
})();
</script>