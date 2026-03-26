@echo off
setlocal


cd /d "%~dp0"
set PATH=%~dp0mingw64\bin;%PATH%
echo Building...
mingw32-make -f Makefile
if errorlevel 1 (
    echo.
    echo Build FAILED. See errors above.
    pause
    exit /b 1
)
echo.
echo Build succeeded! Running build\main.exe ...
echo.
build\main.exe
