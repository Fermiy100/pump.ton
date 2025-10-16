@echo off
echo 🚀 Pump Ton Universal Deployment Script
echo ========================================

:menu
echo Select deployment platform:
echo 1) Railway (Recommended)
echo 2) Vercel
echo 3) Heroku
echo 4) Docker
echo 5) Custom
echo 6) Exit
echo.

set /p choice="Enter your choice (1-6): "

if "%choice%"=="1" goto railway
if "%choice%"=="2" goto vercel
if "%choice%"=="3" goto heroku
if "%choice%"=="4" goto docker
if "%choice%"=="5" goto custom
if "%choice%"=="6" goto exit
echo Invalid option. Please try again.
goto menu

:railway
echo 🚀 Deploying to Railway...
call railway-deploy.bat
goto end

:vercel
echo 🚀 Deploying to Vercel...
echo Please follow Vercel deployment guide
echo 1. Install Vercel CLI: npm install -g vercel
echo 2. Login: vercel login
echo 3. Deploy: vercel --prod
goto end

:heroku
echo 🚀 Deploying to Heroku...
echo Please follow Heroku deployment guide
echo 1. Install Heroku CLI: npm install -g heroku
echo 2. Login: heroku login
echo 3. Create app: heroku create your-app-name
echo 4. Deploy: git push heroku main
goto end

:docker
echo 🐳 Deploying with Docker...
echo Please follow Docker deployment guide
echo 1. Install Docker Desktop
echo 2. Run: docker-compose up -d
goto end

:custom
echo Custom deployment selected
echo Please follow the instructions in the hosting documentation
echo Check README.md for detailed instructions
goto end

:exit
echo Goodbye! 👋
exit /b 0

:end
echo ✅ Deployment process completed!
echo 📚 Check the documentation for next steps.
pause
