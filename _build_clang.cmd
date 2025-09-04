@"%~dp0tools\pour_wrapper_windows.exe" --chdir "%~dp0." --build win32:clang_4.0.0:release %* && exit /B 0 || exit /B 1
