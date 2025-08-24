@"%~dp0tools\pour_wrapper_windows.exe" --script "%0" && exit /B 0 || exit /B 1

pour.require("clang-4.0.0")

pour.chdir(SCRIPT_DIR..'/build/clang')

if not pour.file_exists('flinux.exe') then

    pour.run('cmake-3.31.4',
            '-G', 'MinGW Makefiles',
            '-DCMAKE_BUILD_TYPE=Release',
            '-DCMAKE_SYSTEM_NAME=Windows-GNU',
            '-DCMAKE_C_COMPILER=clang',
            '-DCMAKE_C_COMPILER_WORKS=TRUE',
            '-DCMAKE_C_STANDARD_LIBRARIES=',
            '-DCMAKE_ASM_MASM_COMPILER='..SCRIPT_DIR..'/tools/uasm32.exe',
            SCRIPT_DIR
        )

end

pour.run('cmake-3.31.4',
    '--build', '.'
    )
