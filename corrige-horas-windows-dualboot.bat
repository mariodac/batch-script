@echo off
echo Adicionando chave RealTimeIsUniversal no Registro...

reg add "HKLM\SYSTEM\CurrentControlSet\Control\TimeZoneInformation" /v RealTimeIsUniversal /t REG_BINARY /d 0100000000000000 /f

if %errorlevel% equ 0 (
    echo Chave adicionada com sucesso.
) else (
    echo Falha ao adicionar a chave. Execute como administrador.
)

pause
