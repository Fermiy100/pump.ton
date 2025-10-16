@echo off
echo 🚀 Pump Ton - Git Upload Preparation Script
echo ===========================================

REM Create git-upload directory
if not exist "git-upload" mkdir git-upload
cd git-upload

echo 📁 Created git-upload directory

REM Copy core project files
echo 📂 Copying core project files...

REM Copy client directory
if exist "..\client" (
    echo   - Copying client/
    xcopy "..\client" "client\" /E /I /Q
) else (
    echo   ⚠️  client/ directory not found
)

REM Copy server directory
if exist "..\server" (
    echo   - Copying server/
    xcopy "..\server" "server\" /E /I /Q
) else (
    echo   ⚠️  server/ directory not found
)

REM Copy shared directory
if exist "..\shared" (
    echo   - Copying shared/
    xcopy "..\shared" "shared\" /E /I /Q
) else (
    echo   ⚠️  shared/ directory not found
)

REM Copy docs directory
if exist "..\docs" (
    echo   - Copying docs/
    xcopy "..\docs" "docs\" /E /I /Q
) else (
    echo   ⚠️  docs/ directory not found
)

REM Copy host directory
if exist "..\host" (
    echo   - Copying host/
    xcopy "..\host" "host\" /E /I /Q
) else (
    echo   ⚠️  host/ directory not found
)

REM Copy configuration files
echo 📋 Copying configuration files...

if exist "..\package.json" (
    echo   - Copying package.json
    copy "..\package.json" "package.json" >nul
) else (
    echo   ⚠️  package.json not found
)

if exist "..\README.md" (
    echo   - Copying README.md
    copy "..\README.md" "README.md" >nul
) else (
    echo   ⚠️  README.md not found
)

if exist "..\LICENSE" (
    echo   - Copying LICENSE
    copy "..\LICENSE" "LICENSE" >nul
) else (
    echo   ⚠️  LICENSE not found
)

if exist "..\.gitignore" (
    echo   - Copying .gitignore
    copy "..\.gitignore" ".gitignore" >nul
) else (
    echo   ⚠️  .gitignore not found
)

if exist "..\docker-compose.yml" (
    echo   - Copying docker-compose.yml
    copy "..\docker-compose.yml" "docker-compose.yml" >nul
) else (
    echo   ⚠️  docker-compose.yml not found
)

REM Create upload script
echo 🔧 Creating upload script...
echo @echo off > upload-to-github.bat
echo echo 🚀 Pump Ton - GitHub Upload Script >> upload-to-github.bat
echo echo ================================== >> upload-to-github.bat
echo. >> upload-to-github.bat
echo REM Check if Git is installed >> upload-to-github.bat
echo where git ^>nul 2^>nul >> upload-to-github.bat
echo if %%errorlevel%% neq 0 ^( >> upload-to-github.bat
echo     echo ❌ Git not found. Please install Git first. >> upload-to-github.bat
echo     echo Download from: https://git-scm.com/downloads >> upload-to-github.bat
echo     pause >> upload-to-github.bat
echo     exit /b 1 >> upload-to-github.bat
echo ^) >> upload-to-github.bat
echo. >> upload-to-github.bat
echo REM Initialize Git repository >> upload-to-github.bat
echo echo 📦 Initializing Git repository... >> upload-to-github.bat
echo git init >> upload-to-github.bat
echo. >> upload-to-github.bat
echo REM Add all files >> upload-to-github.bat
echo echo 📁 Adding files to Git... >> upload-to-github.bat
echo git add . >> upload-to-github.bat
echo. >> upload-to-github.bat
echo REM Commit changes >> upload-to-github.bat
echo echo 💾 Committing changes... >> upload-to-github.bat
echo git commit -m "Initial commit: Pump Ton - Modern TON Blockchain Social Trading Platform" >> upload-to-github.bat
echo. >> upload-to-github.bat
echo REM Add remote origin >> upload-to-github.bat
echo echo 🔗 Adding remote origin... >> upload-to-github.bat
echo git remote add origin https://github.com/Fermiy100/pump.ton.git >> upload-to-github.bat
echo. >> upload-to-github.bat
echo REM Push to GitHub >> upload-to-github.bat
echo echo 🚀 Pushing to GitHub... >> upload-to-github.bat
echo git push -u origin main >> upload-to-github.bat
echo. >> upload-to-github.bat
echo if %%errorlevel%% equ 0 ^( >> upload-to-github.bat
echo     echo ✅ Successfully uploaded to GitHub! >> upload-to-github.bat
echo     echo 🌐 Repository: https://github.com/Fermiy100/pump.ton >> upload-to-github.bat
echo ^) else ^( >> upload-to-github.bat
echo     echo ❌ Failed to push to GitHub >> upload-to-github.bat
echo     echo Please check your credentials and try again >> upload-to-github.bat
echo ^) >> upload-to-github.bat
echo. >> upload-to-github.bat
echo pause >> upload-to-github.bat

echo ✅ Git upload package created successfully!
echo.
echo 📁 Location: %CD%
echo.
echo 🚀 To upload to GitHub:
echo    1. Run: upload-to-github.bat
echo    2. Or follow manual steps in README.md
echo.
echo 📋 What's included:
echo    ✅ Complete source code
echo    ✅ Documentation
echo    ✅ Hosting configurations
echo    ✅ Upload scripts
echo    ✅ .gitignore (excludes node_modules, .env, etc.)
echo.
echo Press any key to continue...
pause >nul
