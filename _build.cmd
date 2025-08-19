@echo off
setlocal
cd "%~dp0" || exit /B 1

if not exist build mkdir build
cd build || exit /B 1

if "%FLINUX_CMAKE%"=="" set FLINUX_CMAKE=..\cmake-3.31.4.cmd

if exist flinux.sln goto skip_cmake

call "%FLINUX_CMAKE%" ^
    -A Win32 ^
    "%~dp0" ^
    || exit /B 1

:skip_cmake

call "%FLINUX_CMAKE%" ^
    --build . ^
    --config Release ^
    --parallel ^
    || exit /B 1
echo Done
