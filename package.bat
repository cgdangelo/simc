
REM This script is used for packaging a release built using MSVC 2008
REM Update the "dir" and "rev" variables appropriately

set dir=simc-406-9-win32
set rev=r7873

svn checkout https://simulationcraft.googlecode.com/svn/trunk/ %dir% --username natehieter --revision %rev%
del /F /Q /S %dir%\html

mkdir %dir%\imageformats

xcopy *.dll %dir%
xcopy /I imageformats %dir%\imageformats
xcopy vcredist_x86.exe %dir%
xcopy Win32OpenSSL_Light-0_9_8m.exe %dir%

xcopy simc.exe %dir%
xcopy SimulationCraft.exe %dir%