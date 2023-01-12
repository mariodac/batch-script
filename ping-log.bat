
@echo off
set /p "ip=ENTRE COM O IP: "
set /p "nu=NUMERO DE PACOTES: "
for /f "tokens=1-4 delims=/ " %%i in ("%date%") do (
     set day=%%i
     set month=%%j
     set year=%%k
)
set datestr=%day%_%month%_%year%
echo Realizando ping com %nu% pacotes no ip %ip% arquivo vai ser salvo em %CD%\ping-%ip%_%datestr%.txt
ping %ip% -n %nu% > "%CD%\ping-%ip%_%datestr%.txt"
pause