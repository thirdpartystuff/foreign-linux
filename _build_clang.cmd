@echo off
setlocal
set PATH=C:\LLVM\bin;C:\Qt\Tools\mingw810_32\bin;%PATH%
cd "%~dp0" || exit /B 1

if not exist build mkdir build
if not exist build\clang mkdir build\clang
cd build\clang || exit /B 1

if not "%FLINUX_CMAKE%"=="" goto know_cmake
set FLINUX_CMAKE="%~dp0tools\cmake-3.31.4.cmd"
:know_cmake

if exist flinux.sln goto skip_cmake

call %FLINUX_CMAKE% ^
    -G "MinGW Makefiles" ^
    -DCMAKE_BUILD_TYPE=Release ^
    -DCMAKE_C_COMPILER=clang ^
    -DCMAKE_ASM_MASM_COMPILER="%~dp0tools\uasm32.exe" ^
    "%~dp0" ^
    || exit /B 1

:skip_cmake

call %FLINUX_CMAKE% ^
    --build . ^
    || exit /B 1
echo Done
