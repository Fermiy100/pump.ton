@echo off
echo 🔧 Pump Ton - Fix Dependencies and Update GitHub
echo ================================================

REM Check if Git is installed
where git >nul 2>nul
if %errorlevel% neq 0 (
    echo ❌ Git not found. Please install Git first.
    echo Download from: https://git-scm.com/downloads
    pause
    exit /b 1
)

echo 📁 Current directory: %CD%

REM Add all files
echo 📁 Adding updated files to Git...
git add .

REM Commit changes
echo 💾 Committing dependency fixes...
git commit -m "Fix dependencies for Railway deployment

- Fixed ton-connect-sdk package name to @tonconnect/sdk
- Updated tonweb to @ton-community/sdk
- Added missing react-router-dom dependency
- Fixed package versions for Railway compatibility

Ready for Railway deployment!"

REM Push to GitHub
echo 🚀 Pushing fixes to GitHub...
git push origin main

if %errorlevel% equ 0 (
    echo ✅ Successfully updated GitHub repository!
    echo 🌐 Repository: https://github.com/Fermiy100/pump.ton
    echo.
    echo 🚀 Now ready for Railway deployment:
    echo    1. Go to Railway dashboard
    echo    2. Connect GitHub repository
    echo    3. Deploy with fixed dependencies
    echo.
    echo 📋 Fixed issues:
    echo    ✅ ton-connect-sdk → @tonconnect/sdk
    echo    ✅ tonweb → @ton-community/sdk
    echo    ✅ Added react-router-dom
    echo    ✅ Updated package versions
) else (
    echo ❌ Failed to push to GitHub
    echo Please check your credentials and try again
)

echo.
echo Press any key to continue...
pause >nul
