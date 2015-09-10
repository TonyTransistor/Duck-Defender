@echo off
title Duck Defender
color 2f
cd C:\Users\user\Downloads\Duck Defence
set theValue=
:DefendStart
echo Duck Defender is looking for ducky, feel free to minimise me!
echo.
timeout /t 2 /nobreak
for /f "delims=" %%a in ('devcon find USB\VID_03EB*') do @set theValue=%%a
IF "%theValue%" == "1 matching device(s) found." (GOTO found)
cls
GOTO DefendStart
:found
devcon remove USB\VID_03EB*
color cf
echo.
echo MALICIOUS USB FOUND AND NEUTRALISED!
echo.
pause
