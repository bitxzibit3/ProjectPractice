@echo off
rem DEPLOYTOOL.BAT
SETLOCAL
set DEPLOYTOOLPATH=%~dp0
set PATH=%DEPLOYTOOLPATH%\win64;%DEPLOYTOOLPATH%..\sys\java\jre\win64\jre\bin;%PATH%
"%DEPLOYTOOLPATH%win64\deploytool" %*
ENDLOCAL
"%SystemRoot%\system32\cmd" /c exit %errorlevel%
