
@echo off
:x
set /p "ip=IP: "
D:\Downloads\plink.exe -batch -ssh admin@%ip% -pw admin@12345 -m "D:\Documentos\GitHub\batch-script\comando.txt"
echo Pressione Enter para continuar ou feche a janela para finalizar
pause >nul
goto x