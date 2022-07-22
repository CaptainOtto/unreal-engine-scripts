@echo off

:: Project Name of your project.
set PROJECT=ProjectA
set UE_VERS=UE_5.0
set ROOTDIR=%~dp0
set PROJECT_DIR=%ROOTDIR%

:: Path from current script to root of your game, location of uproject etc.
set PATHFROMSCRIPTTOGAMEFOLDER=\..\..\Game\
set ROOTDIR=%ROOTDIR:~0,-1%%PATHFROMSCRIPTTOGAMEFOLDER%

set UPROJECT_PATH=%PROJECT_DIR%\%PROJECT%.uproject

set UE_DIR=D:\%UE_VERS%
set EDITOR_EXE=%UE_DIR%\Engine\Binaries\Win64\UnrealEditor-Cmd.exe

echo Cooking content for project, %PROJECT%

CALL "%EDITOR_EXE%" "%UPROJECT_PATH%" -run-cook -targetplatform-windowsNoEditor

pause
