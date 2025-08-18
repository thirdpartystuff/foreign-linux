@echo off
setlocal
cd "%~dp0" || exit /B 1

if exist build\flinux.sln goto skip_cmake

if not exist build mkdir build
cd build || exit /B 1

call ..\cmake-3.31.4.cmd ^
    -A Win32 ^
    "%~dp0" ^
    || exit /B 1

cd "%~dp0" || exit /B 1

:skip_cmake

start build\flinux.sln
echo Done
