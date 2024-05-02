.386
.model flat, stdcall
option casemap :none

include windows.inc
include kernel32.inc
includelib kernel32.lib

.data
msg db "Hello, World!", 0DH, 0AH, 0

.code
start:
    mov edx, offset msg
    push 0
    push edx
    push -11 ; STD_OUTPUT_HANDLE
    call GetStdHandle
    push 0
    lea eax, [esp+4]
    push eax
    push 13 ; length of "Hello, World!\r\n"
    push edx
    push eax
    call WriteConsoleA
    push 0
    call ExitProcess

end start
