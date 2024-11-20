global main
extern printf,scanf

section .data
    msg db  "digite um numero: ",0
    fmt  db  "%d",0  
    buffer  dd 0  
    m2    db   "O numero é impar.",10,0
    m1    db   "O numero é par.",10,0

section .bss
   val  resd    1

section .text
main:
    
 
    push msg
    call printf
    add esp,4

 
    lea eax,[buffer]
    push eax
    push fmt
    call scanf
    add esp,8


    mov eax,[buffer]
    mov [val],eax       
    

    and eax,1   ;se lsb for 1 é impar
    cmp eax,0   ;senão par
    je par

    ;imprime msg para impar
    push m2
    call printf
    add esp,4
    
    jmp exit


par:
    push m1
    call printf
    add esp,4


exit:
    mov eax,0
    ret

    
       

