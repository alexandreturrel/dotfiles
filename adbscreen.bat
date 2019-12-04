@echo off
setlocal enabledelayedexpansion
set nb=%1

adb shell screencap -p /sdcard/screen.png
adb pull /sdcard/screen.png screen%nb%.png
adb shell rm /sdcard/screen.png


::    How to execute:
::    In a Windows cmd or Powershell, navigate to the right folder and
::    adb connect IP
::    adbscreen.bat NUMBER
