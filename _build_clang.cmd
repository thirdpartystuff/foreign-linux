@"%~dp0tools\pour_wrapper_windows.exe" --script "%0" && exit /B 0 || exit /B 1

clang_400_win32(
    SCRIPT_DIR,
    SCRIPT_DIR..'/build/clang',
    'Release',
    'flinux.exe',
    { '-DCMAKE_ASM_MASM_COMPILER='..SCRIPT_DIR..'/tools/uasm32.exe' }
    )
