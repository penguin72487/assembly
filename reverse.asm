; INCLUDE Irvine32.inc

; .data
; 	bufffer BYTE "Hello, World!",0 ; string to be displayed
; .code

; main PROC
; 	mov edx,OFFSET bufffer ; load the offset of the string into edx
; 	call WriteString ; display the string
; 	call Crlf ; display a carriage return and line feed
; 	call WaitMsg ; display "Press any key to continue..."
; 	Invoke ExitProcess,0 ; exit the program
; main ENDP
; END main
INCLUDE Irvine32.inc
.data
arrayD DWORD 1,2,3,4

.code
main PROC
    mov esi, OFFSET arrayD
    mov edi, OFFSET arrayD + LENGTHOF arrayD * 3
    mov ecx, LENGTHOF arrayD / 2
L1:
    mov eax, [esi]
    mov ebx, [edi]
    mov [esi], ebx
    mov [edi], eax
    add esi, 4
    sub edi, 4
    loop L1
    invoke ExitProcess, 0
main ENDP
END main
