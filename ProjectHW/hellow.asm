INCLUDE Irvine32.inc

.data
source  BYTE "This is the source string", 0
target  BYTE SIZEOF source DUP('#')

.code
main PROC
    ; Get the addresses of the beginning of source and end of target
    lea esi, [source]             ; Load effective address of source into ESI
    lea edi, [target + SIZEOF source - 2] ; Load effective address of target into EDI (-2 because of null terminator)

    ; Set up the loop counter, here we do not copy the null terminator
    mov ecx, LENGTHOF source - 1  ; Length of the source string excluding the null terminator

reverse_loop:
    mov al, [esi]      ; Load the character at ESI into AL
    mov [edi], al      ; Store the character from AL into EDI
    inc esi            ; Increment ESI to point to the next character in source
    dec edi            ; Decrement EDI to point to the previous character in target
    loop reverse_loop  ; Decrement ECX and loop if ECX is not zero

    ; Add a null terminator to the end of the target string
    mov byte ptr [edi], 0

    ; Print the reversed string
    mov edx, OFFSET target
    call WriteString

    ; Exit the program
    call ExitProcess

main ENDP
END main
