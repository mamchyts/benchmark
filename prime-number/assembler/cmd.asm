    global _start

    section .data
msg                 DB 'The latest prime number: ', 0   ; 0xa (10) - ln code from ASCII
msg_len             EQU $ - msg
value_string        times 10 DB 48
value_string_len    DB 10

    section .bss
arg:                resb 32
arg_len:            resb 32


    section .text
_start:
    ; at the first - detect cmd argument(s)
    ; esp + 4 - address of the programm file name
    ; esp + 8 - address of the first cmd argument
    ; esp + 12 - address of the second cmd argument and etc
    mov eax, [esp + 8]
    mov [arg], eax  ; save argument address into memory

    ; at the second - detect argument length
    mov ecx, [arg]
    xor eax, eax    ; set `0`
.loop:
    cmp byte [eax + ecx], 0
    jz .quit
    inc eax ; `eax` will contain argument length
    jmp short .loop
.quit:
    mov [arg_len], eax  ; save argument length into memory

    ; convert string to integer
    mov edx, [arg]
    mov ecx, [arg_len]
    xor eax, eax
    xor ebx, ebx
.next_symbol:
    movzx eax, byte [edx]   ; get one symbol from string
    inc edx
    sub eax, dword '0'   ; see ASCII codes for more info
    imul ebx, 10
    add eax, ebx
    mov ebx, eax
    loop .next_symbol
    mov ebp, ebx    ; `ebp` used like `primeNumberCount`

    ; main loop for prime numbers detection
    xor ecx, ecx    ; `edi` used like `number`
main_loop:
    inc ecx
    xor edi, edi    ; `edi` used like `i`
    xor esi, esi    ; `esi` used like `j`
.nested_main_loop:
    inc edi
    xor edx, edx
    mov eax, ecx
    div edi
    cmp edx, 0
    jnz .skip_loop_step
    inc esi
.skip_loop_step:
    mov eax, ecx    ; check loop rnding `for ($i = 1; $i <= $number; ++$i)`
    cmp edi, eax
    jnz .nested_main_loop
    cmp esi, 2
    jnz .skip
    dec ebp
.skip:
    cmp ebp, 0
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
    mov eax, 4  ; 4 - code of `write` command
    mov ebx, 1  ; 1 - code of standart output
    mov ecx, msg
    mov edx, msg_len
    int 0x80    ; make syscall
    mov eax, 4
    mov ebx, 1
    mov ecx, value_string
    mov edx, [value_string_len]
    int 0x80

    ; return correct exit code
    mov eax, 1  ; 1 - code of `_exit` command
    xor ebx, ebx    ; 0 - exit status code
    int 0x80
