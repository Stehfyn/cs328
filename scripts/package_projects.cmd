@echo off
setlocal
set scripts=%~dp0
set tools=%~dp0..\tools
echo ...packaging projects
mkdir %scripts%..\assignments\
for /d %%a in (%scripts%..\projects\*) do ( "%tools%\7-Zip\7z.exe" a -tzip "%scripts%..\assignments\%%~na-Stephen-Foster" "%%a" -mx5 > "%scripts%..\assignments\%%~na-package-log.txt" 
)