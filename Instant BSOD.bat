@echo off
setlocal
title Instant BSOD
echo Program Name: Instant BSOD
echo Version: 2.0.6
echo Developer: @YonatanReuvenIsraeli
echo Website: https://www.yonatanreuvenisraeli.dev
echo License: GNU General Public License v3.0
net session > nul 2>&1
if not "%errorlevel%"=="0" goto "NotAdministrator"
goto "Disclaimer"

:"NotAdministrator"
echo.
echo Please run this batch file as an administrator. Press any key to close this batch file.
pause > nul 2>&1
goto "Close"

:"Disclaimer"
echo.
echo READ DISCLAIMER ^-^-^> THIS IS FOR EDUCATIONAL PURPOSES ONLY! DO NOT USE THIS ON SOMEONE ELSES PC WITHOUT THEIR EXPLICIT PERMISSION! THIS WILL BLUE SCREEN OF DEATH THIS PC! CONTINUE AT YOUR OWN RISK! WE HOLD NO RESPONSIBILITY FOR PC DAMAGE, LOSS OF DATA, AND/OR ANYTHING ELSE, EVEN IF THE INSTRUCTIONS ARE WRONG, AND/OR MISSING, AND/OR THIS BATCH FILE DOES SOMETHING ELSE OTHER THAN INTENDED!
echo.
set Disclaimer=
set /p Disclaimer="Do you agree to the Disclaimer? (Yes/No) "
if /i "%Disclaimer%"=="Yes" goto "svchost"
if /i "%Disclaimer%"=="No" goto "Close"
echo Invalid Syntax!
goto "Disclaimer"

:"svchost"
echo.
set svchost=
set /p svchost="This will end the system process svchost.exe and will Blue Screen of Death this PC. Are you okay with that? (Yes/No) "
if /i "%svchost%"=="Yes" goto "Warning"
if /i "%svchost%"=="No" goto "Close"
echo Invalid syntax!
goto "svchost"

:"Warning"
echo.
set Warning=
set /p Warning="READ WARNING --> THERE IS NO GOING BACK AFTER THIS! THIS IS YOUR LAST CHANCE TO STOP! THIS WILL BLUE SCREEN OF DEATH THIS COMPUTER! ARE YOU SURE YOU WANT TO CONTINUE? (Yes/No) "
if /i "%Warning%"=="Yes" goto "BSOD"
if /i "%Warning%"=="No" goto "Close"
echo Invalid syntax!
goto "Warning"

:"BSOD"
endlocal
taskkill /f /im svchost.exe

:"Close"
endlocal
exit
