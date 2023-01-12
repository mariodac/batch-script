@echo off 
: executa script via ssh na faixa de ip
(
   for /L %%b in (1, 1, 72) do (
      D:\Downloads\plink.exe -batch -ssh admin@192.168.3.%%b -pw admin@12345 -m "D:\Documentos\GitHub\batch-script\comando.txt"
   )
)
PAUSE