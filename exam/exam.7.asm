%include "io.inc"
;дано n, далее n чисел. вывести все элементы массива, являющиеся степенями тройки
section .bss
    n resd 1
    a resd 1
section .text
global CMAIN
CMAIN:
    GET_UDEC 4, [n]               ;n
    mov ebx, 0                    ;counter of numbers
    mov ecx, 3
    
B:  cmp ebx, [n]
    je finish 
    GET_UDEC 4, [a]
    mov eax, [a]
    cmp eax, 1
    je print
F:  mov edx, 0 
    div ecx
    cmp edx, 0
    jne D 
    cmp eax, 1
    jne F
print:
    PRINT_UDEC 4, [a]
    PRINT_CHAR ' '
D:  inc ebx
    jmp B
finish:     
    xor eax, eax
    ret