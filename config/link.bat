@echo off

:: setx /m GIT_HOME %~dp0app

set CURRENT_DIR=%~dp0

call link-file %DATA_PATH% %userprofile% npmrc .npmrc

set PNPM_HOME=%userprofile%\AppData\Local\pnpm

call link-dir %CURRENT_DIR%\config %PNPM_HOME%\config
call link-dir %CURRENT_DIR%\store %PNPM_HOME%\store

pause
