@echo off
::delete credencial do skyoe
for /f "tokens=2-5" %%i in ('cmdkey /list ^| findstr "Skype.*"') do (
	cmdkey /delete:%%i %%j %%k %%l
)
::delete credencial de servidor de arquivo
cmdkey /delete:192.168.1.4