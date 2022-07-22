
@echo off

:: Project Name of your project.
set PROJECT=ProjectA
set ROOTDIR=%~dp0

:: Path from current script to root of your game, location of uproject etc.
set PATHFROMSCRIPTTOGAMEFOLDER=\..\..\Game\
set ROOTDIR=%ROOTDIR:~0,-1%%PATHFROMSCRIPTTOGAMEFOLDER%


set PROJECT_DIR=%ROOTDIR%
set UPROJECT_PATH=%PROJECT_DIR%%PROJECT%.uproject

echo Opening %PROJECT% in unreal.

start %UPROJECT_PATH%
