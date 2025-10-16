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

REM Navigate to project root
cd /d "C:\Users\User\Downloads\pump-ton"

echo 📁 Current directory: %CD%

REM Check if .git folder exists
if exist ".git" (
    echo ⚠️  Git repository already initialized
    echo Do you want to continue? (y/n)
    set /p choice="Enter choice: "
    if /i "%choice%" neq "y" (
        echo Operation cancelled
        pause
        exit /b 0
    )
) else (
    echo 📦 Initializing Git repository...
    git init
)

REM Create .gitignore if it doesn't exist
if not exist ".gitignore" (
    echo 📝 Creating .gitignore file...
    echo # Dependencies > .gitignore
    echo node_modules/ >> .gitignore
    echo npm-debug.log* >> .gitignore
    echo yarn-debug.log* >> .gitignore
    echo yarn-error.log* >> .gitignore
    echo. >> .gitignore
    echo # Environment variables >> .gitignore
    echo .env >> .gitignore
    echo .env.local >> .gitignore
    echo .env.development >> .gitignore
    echo .env.test >> .gitignore
    echo .env.production >> .gitignore
    echo. >> .gitignore
    echo # Build outputs >> .gitignore
    echo dist/ >> .gitignore
    echo build/ >> .gitignore
    echo .next/ >> .gitignore
    echo out/ >> .gitignore
    echo. >> .gitignore
    echo # Runtime data >> .gitignore
    echo pids >> .gitignore
    echo *.pid >> .gitignore
    echo *.seed >> .gitignore
    echo *.pid.lock >> .gitignore
    echo. >> .gitignore
    echo # Logs >> .gitignore
    echo logs >> .gitignore
    echo *.log >> .gitignore
    echo. >> .gitignore
    echo # Coverage directory used by tools like istanbul >> .gitignore
    echo coverage/ >> .gitignore
    echo. >> .gitignore
    echo # IDE files >> .gitignore
    echo .vscode/ >> .gitignore
    echo .idea/ >> .gitignore
    echo *.swp >> .gitignore
    echo *.swo >> .gitignore
    echo. >> .gitignore
    echo # OS generated files >> .gitignore
    echo .DS_Store >> .gitignore
    echo .DS_Store? >> .gitignore
    echo Thumbs.db >> .gitignore
    echo. >> .gitignore
    echo # Uploads >> .gitignore
    echo uploads/ >> .gitignore
    echo. >> .gitignore
    echo # Database >> .gitignore
    echo *.db >> .gitignore
    echo *.sqlite >> .gitignore
    echo. >> .gitignore
    echo # Prisma >> .gitignore
    echo prisma/migrations/ >> .gitignore
)

REM Add all files
echo 📁 Adding files to Git...
git add .

REM Check if there are changes to commit
git diff --cached --quiet
if %errorlevel% equ 0 (
    echo ℹ️  No changes to commit
) else (
    echo 💾 Committing changes...
    git commit -m "Initial commit: Pump Ton - Modern TON Blockchain Social Trading Platform"
)

REM Check if remote origin exists
git remote get-url origin >nul 2>nul
if %errorlevel% neq 0 (
    echo 🔗 Adding remote origin...
    git remote add origin https://github.com/Fermiy100/pump.ton.git
) else (
    echo ℹ️  Remote origin already exists
)

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
) else (
    echo ❌ Failed to push to GitHub
    echo Please check your credentials and try again
    echo You may need to authenticate with GitHub
)

echo.
echo Press any key to continue...
pause >nul
