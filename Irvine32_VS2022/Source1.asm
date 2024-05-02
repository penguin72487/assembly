section .data
    prompt_msg db 'Enter your name and student ID on the screen: ', 0
    input_buffer db 100 ; Reserve 100 bytes for input
    input_len db 0 ; To store the actual length of the input

section .bss
    name_and_id resb 100 ; Reserve space for the name and student ID

section .text
    global _start

_start:
    ; Display the prompt message
    mov edx, prompt_msg
    call print_string

    ; Get user input
    mov edx, input_buffer
    call get_input

    ; Display the entered name and student ID
    mov edx, input_buffer
    call print_string

    ; Exit the program
    mov eax, 1       ; The syscall number for exit
    xor ebx, ebx     ; Return 0 status
    int 0x80         ; Call kernel

; Subroutine to print string pointed to by EDX
print_string:
    mov eax, 4       ; The syscall number for sys_write
    mov ebx, 1       ; File descriptor 1 - standard output
    mov ecx, edx     ; Move the pointer to the message into ECX
    int 0x80         ; Call kernel
    ret

; Subroutine to get user input into the buffer pointed to by EDX
get_input:
    mov eax, 3           ; The syscall number for sys_read
    mov ebx, 0           ; File descriptor 0 - standard input
    mov ecx, edx         ; Move the pointer to the input buffer into ECX
    mov edx, 100         ; Maximum number of bytes to read
    int 0x80             ; Call kernel
    mov [input_len], eax ; Store number of bytes read in input_len
    ret
