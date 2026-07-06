section .text
    global _start

_start:
    ; XOR demonstration
    mov eax, [var1]
    xor eax, eax
    mov [xor_result], eax

    ; TEST demonstration
    mov eax, [var2]
    test eax, 1
    jz even

odd:
    mov dword [result], 1
    jmp exit

even:
    mov dword [result], 0

exit:
    mov eax, 1
    int 0x80

section .bss
    xor_result resd 1
    result resd 1

section .data
    var1 dd 25
    var2 dd 8