@echo off
if exist "%~dp0build\clang\flinux.exe" goto built
call "%~dp0_build_clang.cmd" || exit \B 1
:built
"%~dp0build\clang\flinux.exe" %* || exit /B 1
