@echo off
setlocal
cd "%~dp0" || exit /B 1

if exist build\msvc\flinux.sln goto skip_cmake

if not exist build mkdir build
if not exist build\msvc mkdir build\msvc
cd build\msvc || exit /B 1

call "%~dp0tools\pour_wrapper_windows.exe" ^
    --run cmake-3.31.4 ^
        -A Win32 ^
        "%~dp0" ^
        || exit /B 1

cd "%~dp0" || exit /B 1

:skip_cmake

start build\msvc\flinux.sln
