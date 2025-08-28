@echo off
REM 🏛️ OPSCENTER COMMAND SETUP
REM This batch file sets up the OpsCenter commands for Windows

echo.
echo 🏛️ OPSCENTER COMMAND DEPLOYMENT
echo ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo.

REM Add OpsCenter directory to PATH for current session
set "OPSCENTER_PATH=%~dp0"
set "PATH=%PATH%;%OPSCENTER_PATH%"

echo ✅ OpsCenter commands added to current session PATH
echo.
echo AVAILABLE COMMANDS:
echo   📡 opscenter           - Show operational status
echo   📡 opscenter strike    - Deploy strike team
echo   ⚔️ strike              - Direct strike deployment  
echo.
echo EXAMPLES:
echo   opscenter
echo   opscenter strike "analyze competitor pricing"
echo   strike "build React authentication" -Deadpool
echo.

REM Create doskey aliases for the current session
doskey ops=powershell -ExecutionPolicy Bypass -File "%OPSCENTER_PATH%opscenter.ps1" $*
doskey opscenter=powershell -ExecutionPolicy Bypass -File "%OPSCENTER_PATH%opscenter.ps1" $*
doskey strike=powershell -ExecutionPolicy Bypass -File "%OPSCENTER_PATH%strike.ps1" $*

echo ✅ Command aliases created:
echo   📡 ops         - Short form for opscenter
echo   📡 opscenter   - Full OpsCenter interface
echo   ⚔️ strike      - Direct strike deployment
echo.
echo 🟢 OPSCENTER COMMANDS READY FOR DEPLOYMENT
echo.
echo To make permanent, run this batch file each time you open a new terminal
echo Or add the OpsCenter folder to your system PATH environment variable
echo.
pause