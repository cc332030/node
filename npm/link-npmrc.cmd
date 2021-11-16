@echo off

set old="%userprofile%\.npmrc"
set new=%~dp0data\.npmrc

echo.
del /f /q %old%

echo.
mklink %old% %new%

pause >nul
