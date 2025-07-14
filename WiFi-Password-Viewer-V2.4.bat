@echo off
title WiFi Password Viewer V2.4

:checkforupdates
cd Updater
call Updater.bat

:start
cls
echo.
echo //------------------
echo  WiFi Password Viewer
echo  Version: %localtwo%
echo  Released on: %releasedate%
echo  Created by vitv
echo ------------------\\
echo.
echo WARNING: "WiFi Password Viewer" DOES NOT steal/crack the password.
echo           This program finds the password from the saved WiFi which you already connected before!
echo.
echo ----WiFi List----
echo.
netsh wlan show profiles | findstr /R /C:"[ ]:[ ]"
echo.
echo ----End of List----
echo.
set /p ssid="Enter SSID Name: "
cls
echo.
echo //------------------
echo  WiFi Password Viewer
echo  Version: %localtwo%
echo  Released on: %releasedate%
echo  Created by vitv
echo ------------------\\
echo.
echo SSID Name:
netsh wlan show profile name="%ssid%" key=clear | findstr /a:4 "name"
echo.
echo WiFi Password:
netsh wlan show profile name="%ssid%" key=clear | findstr /a:4 "Key"
echo.
echo If results are empty, run the program as Administrator and verify the SSID name.
echo.
pause
goto start