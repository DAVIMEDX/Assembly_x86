global main
extern printf

section .data
    ar          dw      2, 5, 7, 8, 9
    tam         equ     5       
    msn         db      'A multiplicacao dos elementos eh: %d', 10, 0
    rst         dd      1

section .text
main:
    mov ecx, 0       
    mov esi, ar 

loop:
    cmp ecx, tam  
    je  print     
    movzx ebx, word [esi + ecx * 2]
    mov eax, [rst] 
    imul eax, ebx             
    mov [rst], eax  
    inc ecx             
    jmp loop            

print:
    push dword [rst]
    push msn
    call printf
    add esp, 8

exit:
    mov eax, 1
    xor ebx, ebx
    int 0x80

