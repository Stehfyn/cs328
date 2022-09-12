@echo off
setlocal
set scripts=%~dp0
set tools=%~dp0..\tools
echo ...packaging binaries
mkdir %scripts%..\assignments\
for /d %%a in (%scripts%..\projects\*) do ( "%tools%\7-Zip\7z.exe" a -tzip "%scripts%..\assignments\%%~na" "%%a" -mx5
)