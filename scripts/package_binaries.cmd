@echo off
setlocal
set scripts=%~dp0
set tools=%~dp0..\tools
echo ...packaging binaries
mkdir %scripts%..\bin\
for /d %%a in (%scripts%..\projects\*) do ( for /d %%b in ("%%a\Builds\") do if exist "%%b" "%tools%\7-Zip\7z.exe" a -tzip "%scripts%..\bin\win32" ""%%b\*"" -mx5
)