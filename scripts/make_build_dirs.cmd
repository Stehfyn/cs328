@echo off
setlocal
set scripts=%~dp0
echo ...creating build directories
for /d %%a in (%scripts%..\projects\*) do (
	if exist "%%a" mkdir "%%a\Builds\win32-x86_64\" & mkdir "%%a\Builds\win32-x64"
)
