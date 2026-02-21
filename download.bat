@echo off
title TikTok Downloader - gallery-dl
color 0A

echo ===============================
echo   TikTok Downloader (No WM)
echo ===============================
echo.
echo Paste TikTok URL and press ENTER:
set /p URL=

if "%URL%"=="" (
    echo.
    echo No URL entered. Exiting.
    pause
    exit
)

echo.
echo Downloading...
echo.

if exist cookies.txt (
    gallery-dl --cookies cookies.txt "%URL%"
) else (
    gallery-dl "%URL%"
)

echo.
echo ===============================
echo   Download Complete
echo ===============================
pause
