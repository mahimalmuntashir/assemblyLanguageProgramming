.model small
.stack 100h
.code

main proc
    mov cx,0
    
    lev1:
    mov bx,cx
    mov cx,10
    
    lev2:                
    mov ah,2
    mov dl,bl
    int 21h
    
    inc bl
    cmp bl,255
    je exit
    loop lev2
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    inc bl
    mov cx,bx
    loop lev1
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    
    