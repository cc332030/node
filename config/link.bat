@echo off

:: setx /m GIT_HOME %~dp0app

set DATA_PATH=%~dp0data

call link-file %DATA_PATH% %userprofile% npmrc .npmrc

set PNPM_CONFIG=%userprofile%\AppData\Local\pnpm\config
mkdir %PNPM_CONFIG%
call link-dir %DATA_PATH% %PNPM_CONFIG%

pause
