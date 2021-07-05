    global _start

    section .data
msg                 DB 'The latest prime number: ', 0   ; 0xa (10) - ln code from ASCII
msg_len             EQU $ - msg
value_string        times 10 DB 48
value_string_len    DB 10

    section .bss
arg:                resb 64
arg_len:            resb 64
prime_number_count: resb 64


    section .text
_start:
    ; at the first - detect cmd argument(s)
    ; rsp + 8 - address of the programm file name
    ; rsp + 16 - address of the first cmd argument
    ; rsp + 24 - address of the second cmd argument and etc
    mov rax, [rsp + 16]
    mov [arg], rax  ; save argument address into memory

    ; at the second - detect argument length
    mov rcx, [arg]
    xor rax, rax    ; set `0`
.loop:
    cmp byte [rax + rcx], 0
    jz .quit
    inc rax ; `rax` will contain argument length
    jmp short .loop
.quit:
    mov [arg_len], rax  ; save argument length into memory

    ; convert string to integer
    mov rdx, [arg]
    mov rcx, [arg_len]
    xor rax, rax
    xor rbx, rbx
.next_symbol:
    movzx rax, byte [rdx]   ; get one symbol from string
    inc rdx
    sub rax, qword '0'   ; see ASCII codes for more info
    imul rbx, 10
    add rax, rbx
    mov rbx, rax
    loop .next_symbol
    mov [prime_number_count], rbx   ; save integer value into variable

    ; main loop for prime numbers detection
    xor edi, edi    ; `edi` used like `number`
main_loop:
    inc edi
    xor ecx, ecx    ; `ecx` used like `i`
    xor ebx, ebx    ; `ebx` used like `j`
.nested_main_loop:
    inc ecx
    xor edx, edx
    mov eax, edi
    div ecx
    cmp edx, 0
    jnz .skip_loop_step
    inc ebx
.skip_loop_step:
    mov eax, edi    ; check loop ending `for ($i = 1; $i <= $number; ++$i)`
    cmp ecx, eax
    jnz .nested_main_loop
    cmp ebx, 2
    jnz .skip
    dec dword [prime_number_count]
.skip:
    cmp [prime_number_count], dword 0
    jnz main_loop

    ; convert integer to string
    mov ebx, 10
    mov eax, edi
    mov ecx, [value_string_len]
    dec ecx
    mov [value_string + ecx], byte 10
.next_digit:
    xor edx, edx
    div ebx
    add edx, '0' ; convert to ASCII code
    dec ecx
    mov [value_string + ecx], dl
    cmp eax, 0  ; finish loop if main result is zero
    jnz .next_digit

    ; print results
    mov rax, 4  ; 4 - code of `write` command
    mov rbx, 1  ; 1 - code of standart output
    mov rcx, msg
    mov rdx, msg_len
    int 0x80    ; make syscall
    mov rax, 4
    mov rbx, 1
    mov rcx, value_string
    mov rdx, [value_string_len]
    int 0x80

    ; return correct exit code
    mov rax, 1  ; 1 - code of `_exit` command
    xor rbx, rbx    ; 0 - exit status code
    int 0x80
