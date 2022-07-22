
@echo off

set PROJECT=ProjectA
set UE_VERS=UE_5.0
set ROOTDIR=%~dp0
:: Path from current script to root of your game, location of uproject etc.
set PATHFROMSCRIPTTOGAMEFOLDER=\..\..\Game\
set ROOTDIR=%ROOTDIR:~0,-1%%PATHFROMSCRIPTTOGAMEFOLDER%

set PROJECT_DIR=%ROOTDIR%
set UPROJECT_PATH=%PROJECT_DIR%\%PROJECT%.uproject

set UE_DIR=D:\%UE_VERS%
set BUILD_BAT=%UE_DIR%\Engine\Build\BatchFiles\Build.bat
set BUILD_MODE=Development

echo Building Game %PROJECT%

CALL "%BUILD_BAT%" %PROJECT%Editor Win64 %BUILD_MODE% "%UPROJECT_PATH%" -waitmutex -NoHotReload

pause
