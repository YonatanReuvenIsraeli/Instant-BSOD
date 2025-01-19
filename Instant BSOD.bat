@echo off
setlocal
title Instant BSOD
echo Program Name: Instant BSOD
echo Version: 2.0.12
echo License: GNU General Public License v3.0
echo Developer: @YonatanReuvenIsraeli
echo GitHub: https://github.com/YonatanReuvenIsraeli
echo Sponsor: https://github.com/sponsors/YonatanReuvenIsraeli
"%windir%\System32\net.exe" session > nul 2>&1
if not "%errorlevel%"=="0" goto "NotAdministrator"
"%windir%\System32\net.exe" user > nul 2>&1
if not "%errorlevel%"=="0" goto "InWindowsPreinstallationEnvironmentWindowsRecoveryEnvironment"
goto "Disclaimer"

:"NotAdministrator"
echo.
echo Please run this batch file as an administrator. Press any key to close this batch file.
pause > nul 2>&1
goto "Close"

:"InWindowsPreinstallationEnvironmentWindowsRecoveryEnvironment"
echo.
echo You are in Windows Preinstallation Environment or Windows Recovery Environment! You must run this batch file in Windows. Press any key to close this batch file.
pause > nul 2>&1
goto "Close"

:"Disclaimer"
echo.
echo READ DISCLAIMER ^-^-^> THIS IS FOR EDUCATIONAL PURPOSES ONLY! DO NOT USE THIS ON SOMEONE ELSES PC WITHOUT THEIR EXPLICIT PERMISSION! THIS WILL BLUE SCREEN OF DEATH THIS PC! CONTINUE AT YOUR OWN RISK! @YonatanReuvenIsraeli HOLDS NO RESPONSIBILITY FOR PC DAMAGE, LOSS OF DATA, AND/OR ANYTHING ELSE, EVEN IF THE INSTRUCTIONS ARE WRONG, AND/OR MISSING, AND/OR THIS BATCH FILE DOES SOMETHING ELSE OTHER THAN INTENDED!
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
set /p svchost="This will end the system process "svchost.exe" and will Blue Screen of Death this PC. Are you okay with that? (Yes/No) "
if /i "%svchost%"=="Yes" goto "Warning"
if /i "%svchost%"=="No" goto "Close"
echo Invalid syntax!
goto "svchost"

:"Warning"
echo.
set Warning=
set /p Warning="READ WARNING --> THERE IS NO GOING BACK AFTER THIS! THIS IS YOUR LAST CHANCE TO STOP! THIS WILL BLUE SCREEN OF DEATH THIS PC! ARE YOU SURE YOU WANT TO CONTINUE? (Yes/No) "
if /i "%Warning%"=="Yes" goto "BSOD"
if /i "%Warning%"=="No" goto "Close"
echo Invalid syntax!
goto "Warning"

:"BSOD"
endlocal
"%windir%\System32\taskkill.exe" /f /im "%windir%\System32\svchost.exe"
exit

:"Close"
endlocal
exit
