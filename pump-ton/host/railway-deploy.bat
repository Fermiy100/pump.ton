@echo off
echo 🚀 Starting Pump Ton deployment to Railway...

REM Check if Railway CLI is installed
where railway >nul 2>nul
if %errorlevel% neq 0 (
    echo ❌ Railway CLI not found. Installing...
    npm install -g @railway/cli
)

REM Check if user is logged in
railway whoami >nul 2>nul
if %errorlevel% neq 0 (
    echo 🔐 Please login to Railway...
    railway login
)

REM Initialize project if not already initialized
if not exist "railway.json" (
    echo 📦 Initializing Railway project...
    railway init
)

REM Set environment variables
echo ⚙️ Setting environment variables...

REM Set production variables
railway variables set NODE_ENV=production
railway variables set PORT=5000
railway variables set JWT_SECRET=your_super_secret_jwt_key_change_in_production
railway variables set JWT_REFRESH_SECRET=your_refresh_secret_key

REM Set default TON configuration
railway variables set TON_RPC_URL=https://toncenter.com/api/v2/jsonRPC
railway variables set TON_NETWORK=mainnet

REM Set file upload limits
railway variables set UPLOAD_DIR=uploads
railway variables set MAX_FILE_SIZE=10485760
railway variables set ALLOWED_FILE_TYPES=image/jpeg,image/png,image/gif,video/mp4,video/webm

REM Set rate limiting
railway variables set RATE_LIMIT_WINDOW_MS=900000
railway variables set RATE_LIMIT_MAX_REQUESTS=100

echo ⚠️  Please set the following variables manually:
echo    - TON_API_KEY: Your TON API key
echo    - CORS_ORIGIN: Your frontend domain
echo    - STREAMING_API_KEY: Your streaming API key

REM Deploy the project
echo 🚀 Deploying to Railway...
railway up

REM Wait for deployment to complete
echo ⏳ Waiting for deployment to complete...
timeout /t 30 /nobreak >nul

REM Run database migrations
echo 🗄️ Running database migrations...
railway run npx prisma migrate deploy

REM Generate Prisma client
echo 🔧 Generating Prisma client...
railway run npx prisma generate

echo ✅ Deployment completed!
echo 🌐 Your app is now live on Railway!
echo 📊 Check logs with: railway logs
echo 🔍 Check status with: railway status
echo 🔧 Manage variables with: railway variables

echo 📋 Next steps:
echo    1. Set TON_API_KEY in Railway dashboard
echo    2. Configure CORS_ORIGIN for your frontend
echo    3. Set up custom domain (optional)
echo    4. Configure monitoring and alerts
echo    5. Set up database backups

pause
