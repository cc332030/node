@echo off

set NVM_HOME="%userprofile%\AppData\Roaming\nvm"

setx /M NVM_HOME "%NVM_HOME%"
setx /M NVM_SYMLINK "C:\Program Files\nodejs"

call link-dir "%~dp0app" "%NVM_HOME%"

call link-dir "%~dp0data\prefix" "%~dp0app\prefix"

call link-dir "f:\build\node\cache" "%userprofile%\AppData\Local\npm-cache"

call link-file "%~dp0data" "%userprofile%" ".npmrc"

pause >nul
