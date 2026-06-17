@echo off
title IELTS Dashboard Local Server
echo =======================================================
echo     Starting IELTS Coach & Planner Dashboard Server
echo     Address: http://localhost:8000
echo =======================================================
echo.
echo Opening dashboard in your default browser...
start "" "http://localhost:8000"
echo.
echo Launching Python HTTP Server (keep this window open)...
python -m http.server 8000
if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Python HTTP Server failed to start.
    echo Please make sure Python is installed and added to your PATH.
    echo Alternatively, you can double-click index.html directly (mic features may be limited).
    pause
)
