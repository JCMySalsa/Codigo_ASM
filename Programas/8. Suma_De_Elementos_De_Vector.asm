org 0x7C00
mov si, vector
mov cx, 4
xor ax, ax
sum_loop:
    add al, [si]
    inc si
    loop sum_loop
add al, '0'
mov ah, 0x0E
int 0x10
jmp $
vector db 1, 2, 3, 4
times 510-($-$$) db 0
dw 0xAA55