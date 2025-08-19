@echo off
setlocal
cd "%~dp0" || exit /B 1

if not exist build mkdir build
if not exist build\msvc mkdir build\msvc
cd build\msvc || exit /B 1

if not "%FLINUX_CMAKE%"=="" goto know_cmake
set FLINUX_CMAKE="%~dp0tools\cmake-3.31.4.cmd"
:know_cmake

if exist flinux.sln goto skip_cmake

call %FLINUX_CMAKE% ^
    -A Win32 ^
    "%~dp0" ^
    || exit /B 1

:skip_cmake

call %FLINUX_CMAKE% ^
    --build . ^
    --config Release ^
    --parallel ^
    || exit /B 1
echo Done
