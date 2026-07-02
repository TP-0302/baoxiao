@echo off
cd /d "%~dp0"
echo ============================================
echo   出差报销验算工具 - 手机版
echo ============================================
echo.
echo   [手机访问方法]
echo   1. 确保手机和电脑在同一WiFi
echo   2. 查看下方本机IP地址
echo.
echo ============================================
echo.
echo 本机IP地址：
for /f "tokens=2 delims=:" %%a in ('ipconfig ^| findstr "192.168"') do echo   http:%%a:8080
echo.
echo ============================================
echo   在手机上用浏览器打开上面的地址即可使用！
echo   按 Ctrl+C 停止服务器
echo ============================================
echo.
python -m http.server 8080
pause
