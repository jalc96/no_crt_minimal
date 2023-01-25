#include <stdint.h>
#include <windows.h>
#include "win32_crt_memory.cpp"
#include "win32_crt_float.cpp"
#include "win32_crt_math.cpp"
#include "win32_crt_seh.cpp"

void __stdcall WinMainCRTStartup()
{
    float f;
    f = 0.0f;


    char BigArray[10000] = {};
    char from[10] = {1, 2, 3, 4, 5, 1, 2, 3, 4, 5};
    memcpy((void *)BigArray, (void *)from, 10);

    ExitProcess(0);
}