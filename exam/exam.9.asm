%include "io.inc"
;вывести наибольший элемент массива из всех тех элементов, которые меньше 10
section .text
global CMAIN
CMAIN:
    GET_UDEC 4, ecx               ;n
    mov eax, 0                    ;counter of digits
B:  GET_DEC 4, ebx
    cmp ebx, 10
    jge A
    mov edx, ebx                  ;maximum
    jmp L
A:  inc eax 
    jmp B
    
L:  inc eax
    cmp eax, ecx
    je finish
    
    GET_DEC 4, ebx              
M:  cmp ebx, 10
    jge L
    cmp ebx, edx
    jle L
    mov edx, ebx
    jmp L    
finish:    
    PRINT_DEC 4, edx 
    xor eax, eax
    ret