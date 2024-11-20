global main
extern printf

section .data
    ar          dw  1,2,3,4,5,6,7,8,9,10
    tam  equ    10       
    rst       dw  0        
    msn         db  'a soma dos 10 numeros eh: %d',10,0
     
section .text
main:

    
    mov ecx, 0      
    mov esi, ar 

loop:
    cmp ecx, tam
    je  print
        
                          
    mov eax, [esi + ecx*2]       
    
    add [rst], ax     
    
    inc ecx                 
    jmp loop                

print:
    
    movzx eax, word [rst] 
    push eax
    push msn
    call printf            
    add esp, 8               

exit:
    mov eax, 0
    ret


