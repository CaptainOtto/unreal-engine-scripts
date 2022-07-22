
@echo off

set ROOTDIR=%~dp0
:: Path from current script to root of your game, location of uproject etc.
set PATHFROMSCRIPTTOGAMEFOLDER=\..\..\Game\
set ROOTDIR=%ROOTDIR:~0,-1%%PATHFROMSCRIPTTOGAMEFOLDER%

:: Project Name of your project.
set PROJECT=ProjectA
set PROJECT_DIR=%ROOTDIR%
set UPROJECT_PATH=%PROJECT_DIR%%PROJECT%.uproject

start %UPROJECT_PATH%
