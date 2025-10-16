@echo off
echo 🚀 Pump Ton - GitHub Update Script
echo ==================================

REM Navigate to git-upload directory
cd /d "C:\Users\User\Downloads\pump-ton\git-upload"

echo 📁 Current directory: %CD%

REM Add all changes
echo 📁 Adding changes to Git...
git add .

REM Commit changes
echo 💾 Committing changes...
git commit -m "Fix dependencies for Railway deployment

- Fixed ton-connect-sdk package name to @tonconnect/sdk
- Updated tonweb to @ton-community/sdk
- Added missing react-router-dom dependency
- Fixed package versions for Railway compatibility

Ready for Railway deployment!"

REM Push to GitHub
echo 🚀 Pushing to GitHub...
git push origin main

if %errorlevel% equ 0 (
    echo ✅ Successfully updated GitHub repository!
    echo 🌐 Repository: https://github.com/Fermiy100/pump.ton
    echo.
    echo 🚀 Railway will automatically detect changes and redeploy!
    echo 📋 Fixed dependencies:
    echo    ✅ ton-connect-sdk → @tonconnect/sdk
    echo    ✅ tonweb → @ton-community/sdk
    echo    ✅ Added react-router-dom
    echo    ✅ Updated package versions
) else (
    echo ❌ Failed to push to GitHub
    echo Please check your Git credentials
)

echo.
echo Press any key to continue...
pause >nul
