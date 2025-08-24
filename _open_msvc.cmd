@"%~dp0tools\pour_wrapper_windows.exe" --script "%0" && exit /B 0 || exit /B 1

if not pour.file_exists('build/msvc/flinux.sln') then

    pour.chdir(SCRIPT_DIR..'/build/msvc')
    pour.run('cmake-3.31.4',
            '-A', 'Win32',
            SCRIPT_DIR
        )
    pour.chdir(SCRIPT_DIR)

end

pour.shell_open(SCRIPT_DIR..'/build/msvc/flinux.sln')
