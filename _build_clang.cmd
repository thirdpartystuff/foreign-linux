@echo off
setlocal
set PATH=C:\LLVM-4.0.0\bin;C:\Program Files (x86)\Microsoft SDKs\Windows\v7.1A\Bin;%PATH%
cd "%~dp0" || exit /B 1

if not exist build mkdir build
if not exist build\clang mkdir build\clang
cd build\clang || exit /B 1

if exist flinux.sln goto skip_cmake

call "%~dp0tools\pour_wrapper_windows.exe" ^
    --run cmake-3.31.4 ^
        -G "MinGW Makefiles" ^
        -DCMAKE_SYSTEM_NAME=MinGW ^
        -DCMAKE_BUILD_TYPE=Release ^
        -DCMAKE_C_COMPILER=clang ^
        -DCMAKE_C_COMPILER_WORKS=TRUE ^
        -DCMAKE_C_STANDARD_LIBRARIES="" ^
        -DCMAKE_ASM_MASM_COMPILER="%~dp0tools\uasm32.exe" ^
        "%~dp0" ^
        || exit /B 1

:skip_cmake

call "%~dp0tools\pour_wrapper_windows.exe" ^
    --run cmake-3.31.4 ^
        --build . ^
        || exit /B 1
echo Done
