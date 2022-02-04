@echo off
rem MCC.BAT
SETLOCAL
set MCCPATH=%~dp0
set "PATH=%MCCPATH%win64;%PATH%"
"%MCCPATH%win64\mcc" %*
ENDLOCAL
"%SystemRoot%\system32\cmd" /c exit %errorlevel%
