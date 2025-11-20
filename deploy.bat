@echo off
echo ========================================
echo Owner Panel - 推送到 GitHub
echo ========================================
echo.

cd /d "%~dp0"

git add .
git commit -m "update: Owner Panel 更新"
git push -u origin main

echo.
echo ========================================
echo 推送完成!
echo Zeabur 会自动重新部署
echo ========================================
pause
