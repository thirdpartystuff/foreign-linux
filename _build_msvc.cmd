@"%~dp0tools\pour_wrapper_windows.exe" --script "%0" && exit /B 0 || exit /B 1

pour.chdir(SCRIPT_DIR..'/build/msvc')

if not pour.file_exists('flinux.sln') then

    pour.run('cmake-3.31.4',
            '-A', 'Win32',
            SCRIPT_DIR
        )
    pour.chdir(SCRIPT_DIR)

end

pour.run('cmake-3.31.4',
    '--build', '.',
    '--config', 'Release'
    )
