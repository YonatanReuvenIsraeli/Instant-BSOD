@echo off
setlocal
title Instant BSOD
echo Please run this batch file as an administrator.
echo.
echo READ DISCLAIMER ^-^-^> THIS IS FOR EDUCATIONAL PURPOSES ONLY! DO NOT USE THIS ON SOMEONE ELSES PC WITHOUT THEIR EXPLICIT PERMISSION! THIS WILL BLUE SCREEN OF DEATH THIS PC! CONTINUE AT YOUR OWN RISK! WE HOLD NO RESPONSIBILITY FOR PC DAMAGE, LOSS OF DATA, AND/OR ANYTHING ELSE, EVEN IF THE INSTRUCTIONS ARE WRONG, AND/OR MISSING, AND/OR THIS BATCH FILE DOES SOMETHING ELSE OTHER THAN INTENDED!
goto :Disclaimer

:Disclaimer
echo.
set /p Disclaimer="Do you agree to the Disclaimer? (Yes/No) "
if /i "%Disclaimer%"=="Yes" goto :svchost
if /i "%Disclaimer%"=="No" goto :Close
echo Invalid Syntax!
goto :Disclaimer

:svchost
echo.
set /p svchost="This will end the system process svchost.exe and will Blue Screen of Death this PC. Are you okay with that? (Yes/No) "
if /i "%svchost%"=="Yes" goto :Warning
if /i "%svchost%"=="No" goto :Close
echo Invalid Syntax!
goto :svchost

:Warning
echo.
set /p Warning="READ WARNING --> THERE IS NO GOING BACK AFTER THIS! THIS IS YOUR LAST CHANCE TO STOP! THIS WILL BLUE SCREEN OF DEATH THIS COMPUTER! ARE YOU SURE YOU WANT TO CONTINUE? (Yes/No) "
if /i "%Warning%"=="Yes" goto :BSOD
if /i "%Warning%"=="No" goto :Close
echo Invalid Syntax!
goto :Warning

:BSOD
endlocal
taskkill /f /im svchost.exe
exit

:Close
endlocal
exit
