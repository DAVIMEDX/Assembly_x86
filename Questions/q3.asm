section .data 
    msg1 db 'O numero eh par', 0
    msg2 db 'O numero eh impar', 0
    num dd 5
    
section .bss
    res resb 1
    
section .text 
    
    extern printf
    global main
    
main:
    mov eax, [num]
    mov ebx, 2
    xor edx, edx
    div ebx
    
    cmp edx, 0
    je par
    
    mov eax, msg2
    push eax
    call printf
    add esp, 4
    jmp fim
    
par:
    mov eax, msg1
    push eax
    call printf
    add esp, 4
    
fim:
    mov eax, 1
    xor ebx, ebx
    int 0x80

