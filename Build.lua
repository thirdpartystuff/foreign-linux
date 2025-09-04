
target 'win32:msvc_2022'
target 'win32:clang_4.0.0:release' { function()
        table_append(CMAKE_PARAMS, '-DCMAKE_ASM_MASM_COMPILER='..SCRIPT_DIR..'/tools/uasm32.exe')
    end }
