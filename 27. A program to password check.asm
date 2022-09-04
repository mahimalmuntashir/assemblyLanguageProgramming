.model small
.stack 100h
.data
a db 'Enter Your Password: $'
ok db 10,13,'Correct Password $'
ntok db 10,13,'Wrong Password $'
pass db 'assembly$'
pass1 dw 8
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov cx,pass1
    mov bx,offset pass
    
    mov ah,9
    lea dx,a
    int 21h
    
    l1:
    mov ah,8
    int 21h
    
    cmp al,[bx]
    jne 12
    inc bx
    loop l1
    
    mov ah,9
    lea dx,ok
    int 21h
    jmp exit
    
    l2:
    mov ah,9
    lea dx,ntok
    int 21h
    jmp exit
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
