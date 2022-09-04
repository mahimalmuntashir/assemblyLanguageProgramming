.model small
.stack 100h
.data
a db 'Enter Two Number: $'
b db 10,13,'Smallest Number: $'
.code

main proc
    mov ax,@data
    mov ds,ax       
    
    mov ah,9
    lea dx,a
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    int 21h
    mov bh,al
    
    Biggest:
    cmp bl,bh
    jg l2
    jmp l1
    
    
    l2:
    mov ah,9
    lea dx,b
    int 21h
    
    mov ah,2
    mov dl,bh
    int 21h
    jmp exit
    
    l1:
    mov ah,9
    lea dx,b
    int 21h
    
    mov ah,2
    mov dl,bl
    int 21h
    jmp exit 
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main    