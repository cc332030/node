@echo off

if not defined source (
  echo.
  set /p source=请输入源目录：
)

set target=%~dp0latest

if not exist %source% (
  echo.
  echo 文件夹不存在 %source%
  pause >nul
  exit 0
)

:: 创建父级目录
if not exist %target% (
  mkdir %target%
)
rd /s /q %target%

echo.
mklink /d %target% %source%

pause >nul
