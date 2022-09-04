.model small
.stack 100h
.data
x db 'Enter Three Number: $'
y db 10,13,'Largest Number: $'
.code

main proc
    mov ax,@data
    mov ds,ax       
    
    mov ah,9
    lea dx,x
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    int 21h
    mov bh,al
    int 21h
    mov cl,al
    
    cmp bl,bh
    jge a
    
    b:
    cmp bh,cl
    jge c 
    
    mov ah,9
    lea dx,y
    int 21h
         
    mov ah,2
    mov dl,cl
    int 21h
    jmp exit
    
    c:     
    mov ah,9
    lea dx,y
    int 21h
    
    mov ah,2
    mov dl,bh
    int 21h
    jmp exit
    
    a:
    cmp bl,cl
    jge d
    
    mov ah,9
    lea dx,y
    int 21h
    
    mov ah,2
    mov dl,cl      
    int 21h
    jmp exit
    
    d: 
    mov ah,9
    lea dx,y
    int 21h
    
    mov ah,2
    mov dl,bl
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main    