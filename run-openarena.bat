@echo off
rem Launches the locally built OpenArena engine. Game data (baseoa\*.pk3) lives
rem next to the exe; config, logs and screenshots go to the "home" folder there.
set "BIN=%~dp0build\release-mingw32-x86_64"

if not exist "%BIN%\openarena.x86_64.exe" (
  echo openarena.x86_64.exe not found in "%BIN%". Build it first with make.
  pause
  exit /b 1
)

if not exist "%BIN%\home" mkdir "%BIN%\home"
cd /d "%BIN%"
start "" "%BIN%\openarena.x86_64.exe" +set fs_homepath "%BIN%\home" %*
