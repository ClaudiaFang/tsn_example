set beforepath=%cd%

:: If the pass parameter not insert, then build whole project
IF %1.==. GOTO startBuild

set module=%1
cd .\%module%

:startBuild
mkdir Build
cd .\Build

del /Q /S *
cmake -G "MinGW Makefiles" ..
mingw32-make

cd %beforepath%