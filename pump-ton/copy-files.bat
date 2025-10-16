@echo off
echo 🚀 Copying files to git-upload...

REM Copy main directories
if exist "client" (
    echo Copying client/
    xcopy "client" "git-upload\client\" /E /I /Q
)

if exist "server" (
    echo Copying server/
    xcopy "server" "git-upload\server\" /E /I /Q
)

if exist "shared" (
    echo Copying shared/
    xcopy "shared" "git-upload\shared\" /E /I /Q
)

if exist "docs" (
    echo Copying docs/
    xcopy "docs" "git-upload\docs\" /E /I /Q
)

if exist "host" (
    echo Copying host/
    xcopy "host" "git-upload\host\" /E /I /Q
)

REM Copy main files
if exist "package.json" (
    echo Copying package.json
    copy "package.json" "git-upload\package.json" >nul
)

if exist "README.md" (
    echo Copying README.md
    copy "README.md" "git-upload\README.md" >nul
)

if exist "LICENSE" (
    echo Copying LICENSE
    copy "LICENSE" "git-upload\LICENSE" >nul
)

if exist "docker-compose.yml" (
    echo Copying docker-compose.yml
    copy "docker-compose.yml" "git-upload\docker-compose.yml" >nul
)

echo ✅ Files copied to git-upload!
pause
