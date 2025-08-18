@echo off
setlocal
cd "%~dp0" || exit /B 1

if not exist build mkdir build
cd build || exit /B 1

if exist flinux.sln goto skip_cmake

call ..\cmake-3.31.4.cmd ^
    -A Win32 ^
    "%~dp0" ^
    || exit /B 1

:skip_cmake

call ..\cmake-3.31.4.cmd ^
    --build . ^
    --config Release ^
    --parallel ^
    || exit /B 1
echo Done
