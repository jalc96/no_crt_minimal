@echo off

IF NOT EXIST ..\build mkdir ..\build
pushd ..\build



del *.pdb > NUL 2> NUL
del *.obj > NUL 2> NUL


set windows_libs=kernel32.lib -nodefaultlib -subsystem:windows
set options=-Zi -Od -Gm- -GR- -EHa- -Oi -GS- -Gs9999999

set linker=/link %windows_libs%

cl %options% ../src/no_crt_minimal.cpp -Feno_crt_minimal.exe %linker% -stack:0x100000,0x100000|msvc_color_release.exe



popd
