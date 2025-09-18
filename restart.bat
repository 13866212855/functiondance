@echo off
echo.
echo ========================================
echo   Function Dance: Interactive Trigonometric Explorer
echo ========================================
echo.
echo Starting the project...
echo.

REM Check if Python is installed
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo [ERROR] Python not found, please install Python 3.x first
    pause
    exit /b 1
)

REM Display Python version
echo [INFO] Detected Python version:
python --version
echo.

REM Check if port 8000 is in use
netstat -an | find ":8000" >nul
if %errorlevel% equ 0 (
    echo [WARNING] Port 8000 is in use, trying to terminate related processes...
    
    REM Try to terminate processes using port 8000
    for /f "tokens=5" %%a in ('netstat -ano ^| find ":8000" ^| find "LISTENING"') do (
        echo Terminating process PID: %%a
        taskkill /PID %%a /F >nul 2>&1
    )
    
    REM Wait 2 seconds
    timeout /t 2 /nobreak >nul
    echo.
)

REM Start HTTP server
echo [INFO] Starting HTTP server...
echo [INFO] Server URL: http://localhost:8000
echo.
echo [TIP] Press Ctrl+C to stop the server
echo.
echo ========================================
echo.

REM Delay 3 seconds then auto-open browser
start "" cmd /c "timeout /t 3 /nobreak >nul && start http://localhost:8000"

REM Start Python HTTP server
python -m http.server 8000

REM If server stops, show exit message
echo.
echo ========================================
echo [INFO] Server stopped
echo ========================================
echo.
pause