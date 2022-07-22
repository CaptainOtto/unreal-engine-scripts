@echo off

set PROJECT=ProjectA
set WINDOWX=1280
set WINDOWY=720
set ROOTDIR=%~dp0

:: Path from current script to root of your game, location of uproject etc.
set PATHFROMSCRIPTTOGAMEFOLDER=\..\..\Game\
set ROOTDIR=%ROOTDIR:~0,-1%%PATHFROMSCRIPTTOGAMEFOLDER%

set PROJECT_DIR=%ROOTDIR%
set GAME_EXE_PATH=%PROJECT_DIR%\Binaries\Win64\%PROJECT%.exe

echo Running Game %PROJECT%

CALL "%GAME_EXE_PATH%" -log -windowed -resx=%WINDOWX% -resy=%WINDOWY%

pause
