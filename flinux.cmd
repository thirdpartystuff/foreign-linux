@echo off
if exist "%~dp0build\Release\flinux.exe" goto built
call "%~dp0_build.cmd" || exit \B 1
:built
"%~dp0build\Release\flinux.exe" %* || exit /B 1
