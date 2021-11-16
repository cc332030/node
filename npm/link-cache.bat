@echo off

set source=%~dp0data\cache
set target=%userprofile%\AppData\Local\npm-cache

if not exist %source% (
  mkdir %source%
)

:: 创建父级目录
if not exist %target% (
  mkdir %target%
)
rd /s /q %target%

echo.
mklink /d %target% %source%

pause >nul
