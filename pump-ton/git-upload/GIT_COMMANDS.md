# Git Commands for Railway Fix

## Commands to run in git-upload folder:

```bash
# Navigate to git-upload folder
cd C:\Users\User\Downloads\pump-ton\git-upload

# Add all changes
git add .

# Commit with descriptive message
git commit -m "Fix dependencies for Railway deployment

- Fixed ton-connect-sdk package name to @tonconnect/sdk
- Updated tonweb to @ton-community/sdk
- Added missing react-router-dom dependency
- Fixed package versions for Railway compatibility

Ready for Railway deployment!"

# Push to GitHub
git push origin main
```

## What this fixes:

✅ **Server Dependencies:**
- `ton-connect-sdk` → `@tonconnect/sdk`
- `tonweb` → `@ton-community/sdk`

✅ **Client Dependencies:**
- Added `react-router-dom`

✅ **Railway Compatibility:**
- All packages available in npm registry
- Compatible Node.js versions
- Correct project structure

## After pushing:

1. Railway will automatically detect changes
2. Redeployment should succeed
3. All dependencies will install correctly
4. Application will start properly

---

🚀 **Ready for Railway deployment!**
