@echo off
cd /d "%~dp0"
echo Stopping Docker app container (keeping MySQL running)...
docker compose stop app >nul 2>&1
docker compose up -d mysql
echo Starting native Laravel server on http://localhost ...
cd /d "%~dp0public"
"C:\Users\Auromindai engineer\AppData\Local\Microsoft\WinGet\Packages\PHP.PHP.8.2_Microsoft.Winget.Source_8wekyb3d8bbwe\php.exe" -S 0.0.0.0:80 ..\vendor\laravel\framework\src\Illuminate\Foundation\resources\server.php
