@echo off
chcp 65001 >nul
echo.
echo ========================================
echo   函数之舞：三角函数交互式探索
echo   Function Dance: Interactive Trigonometric Explorer
echo ========================================
echo.
echo 正在启动项目...
echo Starting the project...
echo.

:: 检查Python是否安装
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo [错误] 未检测到Python，请先安装Python 3.x
    echo [ERROR] Python not found, please install Python 3.x first
    pause
    exit /b 1
)

:: 显示Python版本
echo [信息] 检测到Python版本：
echo [INFO] Detected Python version:
python --version
echo.

:: 检查端口8000是否被占用
netstat -an | find ":8000" >nul
if %errorlevel% equ 0 (
    echo [警告] 端口8000已被占用，正在尝试终止相关进程...
    echo [WARNING] Port 8000 is in use, trying to terminate related processes...
    
    :: 尝试终止占用8000端口的进程
    for /f "tokens=5" %%a in ('netstat -ano ^| find ":8000" ^| find "LISTENING"') do (
        echo 终止进程 PID: %%a
        taskkill /PID %%a /F >nul 2>&1
    )
    
    :: 等待2秒
    timeout /t 2 /nobreak >nul
echo.
)

:: 启动HTTP服务器
echo [信息] 正在启动HTTP服务器...
echo [INFO] Starting HTTP server...
echo [信息] 服务器地址: http://localhost:8000
echo [INFO] Server URL: http://localhost:8000
echo.
echo [提示] 按 Ctrl+C 可停止服务器
echo [TIP] Press Ctrl+C to stop the server
echo.
echo ========================================
echo.

:: 延迟3秒后自动打开浏览器
start "" cmd /c "timeout /t 3 /nobreak >nul && start http://localhost:8000"

:: 启动Python HTTP服务器
python -m http.server 8000

:: 如果服务器停止，显示退出信息
echo.
echo ========================================
echo [信息] 服务器已停止
echo [INFO] Server stopped
echo ========================================
echo.
pause