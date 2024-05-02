INCLUDE Irvine32.inc

.data
prompt  BYTE "Enter the number of layers: ", 0
layer   DWORD ?
i  DWORD ?

.code
main PROC
    ; Prompt user for input
    mov edx, OFFSET prompt
    call WriteString
    call ReadInt
    mov layer, eax
    mov ecx, layer
    L1:
        mov i, ecx ; cash ecx
        ; ecx = layer - i +1
        mov eax, layer
        sub eax, i
        inc eax
        mov ecx, eax
        L2:
            mov al, '*'
            call WriteChar
            loop L2
        mov ecx, i
        call Crlf ; new line
        loop L1    

main ENDP
END main
