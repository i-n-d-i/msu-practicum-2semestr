%include "io.inc"
;считать последовательность слов, разделенных запятыми, и оканчивающуюся точкой.
;вывести число слов из 3 символов
section .text
global CMAIN
CMAIN:
    mov bh, 0                ;answer
    
A:  mov bl, 0                ;letters 
B:  GET_CHAR al
    cmp al, '.'
    je last_word   
    cmp al, ','
    je next_word
    inc bl
    jmp B
next_word:
    cmp bl, 3
    jne D
    inc bh
D:  jmp A
last_word:
    cmp bl, 3
    jne fin
    inc bh
fin:
    PRINT_UDEC 1, bh
    xor eax, eax
    ret