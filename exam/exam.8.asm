%include "io.inc"

section .text
global CMAIN
CMAIN:
    xor ebx, ebx    
    xor eax, eax
    xor ecx, ecx
    mov bl, 0
    mov cl, 1
.cycle:
    GET_CHAR al
    cmp al, '.'
    je .end
    shl bl, 1
    cmp al, '1'
    jne .cycle
    xor bl, cl
    jmp .cycle
.end:
    PRINT_DEC 1, bl
    ret