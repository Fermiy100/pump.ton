@echo off
echo 🚀 Pump Ton - GitHub Upload Script
echo ==================================

REM Check if Git is installed
where git >nul 2>nul
if %errorlevel% neq 0 (
    echo ❌ Git not found. Please install Git first.
    echo Download from: https://git-scm.com/downloads
    pause
    exit /b 1
)

echo 📁 Current directory: %CD%

REM Initialize Git repository
echo 📦 Initializing Git repository...
git init

REM Add all files
echo 📁 Adding files to Git...
git add .

REM Commit changes
echo 💾 Committing changes...
git commit -m "Initial commit: Pump Ton - Modern TON Blockchain Social Trading Platform

Features:
- React frontend with TypeScript
- Node.js backend with Express
- PostgreSQL database with Prisma ORM
- Redis caching
- TON blockchain integration
- Real-time features with Socket.IO
- Docker deployment configuration
- Railway deployment scripts
- Comprehensive documentation

Ready for GitHub and Railway deployment!"

REM Add remote origin
echo 🔗 Adding remote origin...
git remote add origin https://github.com/Fermiy100/pump.ton.git

REM Push to GitHub
echo 🚀 Pushing to GitHub...
git push -u origin main

if %errorlevel% equ 0 (
    echo ✅ Successfully uploaded to GitHub!
    echo 🌐 Repository: https://github.com/Fermiy100/pump.ton
    echo.
    echo 📋 Next steps:
    echo    1. Set up GitHub Pages (optional)
    echo    2. Configure GitHub Actions for CI/CD
    echo    3. Add repository description and topics
    echo    4. Create Issues and Pull Requests
    echo    5. Set up branch protection rules
    echo.
    echo 🚀 Ready for Railway deployment:
    echo    cd host
    echo    railway-deploy.bat
) else (
    echo ❌ Failed to push to GitHub
    echo Please check your credentials and try again
    echo You may need to authenticate with GitHub
)

echo.
echo Press any key to continue...
pause >nul