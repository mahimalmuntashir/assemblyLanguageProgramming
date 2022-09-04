.model small
.stack 100h
.data
a db 10,13,'For AND: $'
b db 10,13,'For OR: $'
c db 10,13,'For XOR: $'  

.code

main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,a
    int 21h
    
    mov bl,111b
    and bl,101b
    
    add bl,48
    
    mov ah,2
    mov dl,bl
    int 21h
    
    OR1:    
    mov ah,9
    lea dx,b
    int 21h
    
    mov bl,101b
    or bl,101b
    
    add bl,48
    
    mov ah,2
    mov dl,bl
    int 21h
    
    XOR1:     
    mov ah,9
    lea dx,c
    int 21h
    
    mov bl,111b
    xor bl,100b
    
    add bl,48
    
    mov ah,2
    mov dl,bl
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    