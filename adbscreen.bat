@echo off
setlocal enabledelayedexpansion
set nb=%1

adb shell screencap -p /sdcard/screen.png
adb pull /sdcard/screen.png screen%nb%.png
adb shell rm /sdcard/screen.png
