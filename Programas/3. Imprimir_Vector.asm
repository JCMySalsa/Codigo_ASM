org 0x7C00
mov si, vector
mov cx, 3
print_loop:
    lodsb
    add al, '0'
    mov ah, 0x0E
    int 0x10
    loop print_loop
jmp $
vector db 1, 2, 3
times 510-($-$$) db 0
dw 0xAA55