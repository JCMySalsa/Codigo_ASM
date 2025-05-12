org 0x7C00
mov cx, 5
countdown:
    mov al, cl
    add al, '0'
    mov ah, 0x0E
    int 0x10
    loop countdown
jmp $
times 510-($-$$) db 0
dw 0xAA55