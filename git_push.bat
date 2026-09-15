@echo off
cd /d "%~dp0"

where git >nul 2>&1
if errorlevel 1 (
  echo [ERROR] Git not found. Install "Git for Windows": https://git-scm.com/download/win
  pause
  exit /b 1
)

if not exist ".git" git init

REM set a local commit identity only if none is configured
git config user.email >nul 2>&1 || git config user.email "sharedgpt2022@gmail.com"
git config user.name  >nul 2>&1 || git config user.name  "k0ng-min"

git add .
git commit -m "week03: Finding Similar Items (Minhash & LSH)" -m "Co-Authored-By: Claude Opus 4.8 <noreply@anthropic.com>" -m "Claude-Session: https://claude.ai/code/session_01CLpFXHJL6Mk99Cev3JSggR" || echo (nothing new to commit)

git branch -M main

git remote add origin https://github.com/k0ng-min/bigdata_2026.git 2>nul || git remote set-url origin https://github.com/k0ng-min/bigdata_2026.git

echo.
echo Pushing to GitHub... a login window may pop up - log in with your GitHub account.
git push -u origin main

echo.
echo =========================================
echo  Done. If there are errors above, screenshot and tell Claude.
echo  Success -^> https://github.com/k0ng-min/bigdata_2026
echo =========================================
pause
