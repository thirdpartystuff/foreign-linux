@"%~dp0tools\pour_wrapper_windows.exe" --script "%0" %* && exit /B 0 || exit /B 1
pour.build("win32:clang_4.0.0:release", SCRIPT_DIR)
