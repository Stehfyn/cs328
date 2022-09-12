@echo off
setlocal
set scripts=%~dp0
echo ...cleaning
for /d /r "%scripts%..\projects\" %%a in (Builds\ Library\ Logs\ Temp\ UserSettings\) do (
	if exist "%%a" echo ...deleting "%%a" & rd /s /q "%%a"
)
