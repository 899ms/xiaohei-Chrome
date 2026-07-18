@echo off
setlocal
cd /d "%~dp0local-functional-v2-app"
if not exist "node_modules\electron\dist\electron.exe" (
  echo Electron runtime is missing.
  echo Run: npm install
  pause
  exit /b 1
)
call npm start