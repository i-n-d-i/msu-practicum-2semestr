%include "io.inc"
;считать последовательность слов, разделенных запятыми, и оканчивающуюся точкой.
;вывести число слов, оканчивающихся на 'a'
section .text
global CMAIN
CMAIN:
    mov bh, 0                ;answer
A:  GET_CHAR al
B:  GET_CHAR bl
    cmp bl, '.'
    je last_word   
    cmp bl, ','
    je next_word  
    mov al, bl
    jmp B
next_word:
    cmp al, 'a'
    jne A
    inc bh
    jmp A
last_word:
    cmp al, 'a'
    jne fin
    inc bh
fin:
    PRINT_UDEC 1, bh
    xor eax, eax
    ret