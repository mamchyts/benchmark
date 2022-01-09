    global _start

    section .data
msg                 db 'The latest prime number: ', 0   ; 0 - NUL code from ASCII
msg_len             equ $ - msg
value_string        db '0000000000', 0
value_string_len    equ $ - value_string

    section .bss
primeNumberCount:   resd 1
arg:                resd 1
arg_len:            resd 1


    section .text
_start:
    ; check cmd argument(s) count `argc`
    cmp dword [esp], 1
    jz short .default

    ; esp + 4 - address of the programm file name
    ; esp + 8 - address of the first cmd argument
    ; esp + 12 - address of the second cmd argument and etc.
    mov eax, [esp + 8]
    mov [arg], eax  ; save argument address into memory

    ; try to detect cmd argument length
    mov ecx, [arg]
    xor eax, eax    ; set `0`
.loop:
    cmp byte [eax + ecx], 0
    jz short .quit
    add eax, 1 ; `eax` will contain argument length
    jmp .loop
.quit:
    mov [arg_len], eax  ; save argument length into memory

    ; convert string (cmd argument) to integer
    mov edx, [arg]
    mov ecx, [arg_len]
    xor eax, eax
    xor ebx, ebx
.next_symbol:
    movzx eax, byte [edx]   ; get one symbol from string
    add edx, 1
    sub eax, dword '0'   ; see ASCII codes for more info
    imul ebx, 10
    add eax, ebx
    mov ebx, eax
    sub ecx, 1
    jnz short .next_symbol
    mov [primeNumberCount], ebx
    jmp .pre_while_loop

.default:
    mov dword [primeNumberCount], 100

    ; main loop
.pre_while_loop:
    xor edi, edi    ; `edi` used like `number`

while_loop:
    add edi, 1
    xor ecx, ecx    ; `ecx` used like `i`
    xor ebx, ebx    ; `ebx` used like `j`
.nested_for_loop:
    add ecx, 1
    xor edx, edx
    mov eax, edi
    div ecx ; check condition `if (number % i == 0)`
    cmp edx, 0
    jnz short .skip_loop_step
    add ebx, 1
.skip_loop_step:
    cmp ecx, edi    ; check loop condition `i <= number`
    jnz short .nested_for_loop
    cmp ebx, 2  ; check condition `if (j == 2)`
    jnz short .skip
    sub dword [primeNumberCount], 1
.skip:
    cmp [primeNumberCount], dword 0
    jnz short while_loop

    ; convert integer to string
    mov ebx, 10
    mov eax, edi
    mov ecx, value_string_len
    sub ecx, 1
    mov [value_string + ecx], byte 10
.next_digit:
    xor edx, edx
    div ebx
    add edx, '0' ; convert to ASCII code
    sub ecx, 1
    mov [value_string + ecx], dl
    cmp eax, 0  ; finish loop if main result is zero
    jnz short .next_digit

    ; print results
    mov eax, 4  ; 4 - code of `write` command
    mov ebx, 1  ; 1 - code of standart output
    mov ecx, msg
    mov edx, msg_len
    int 0x80    ; make syscall
    mov eax, 4
    mov ebx, 1
    mov ecx, value_string
    mov edx, value_string_len
    int 0x80

    ; return correct exit code
    mov eax, 1  ; 1 - code of `_exit` command
    xor ebx, ebx    ; 0 - exit status code
    int 0x80
