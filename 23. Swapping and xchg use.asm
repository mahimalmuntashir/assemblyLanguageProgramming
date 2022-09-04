.model small
.stack 100h
.code 

main proc
    ;CSE ESC
    
    mov ah,1
    int 21h
    mov bl,al
    int 21h
    mov bh,al
    int 21h
    mov cl,al
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    
    mov ah,2
    mov dl,cl
    int 21h
    mov dl,bh
    int 21h
    mov dl,bl
    int 21h
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    ;gh
    ;hg
    
    mov ah,1
    int 21h
    mov bl,al
    int 21h
    mov bh,al
    
    xchg bl,bh
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,2
    mov dl,bl
    int 21h
    mov dl,bh
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main