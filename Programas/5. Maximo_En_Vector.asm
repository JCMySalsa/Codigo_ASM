org 0x7C00
mov si, vector
mov cx, 4
mov al, [si]
find_max:
    cmp al, [si]
    jge next
    mov al, [si]
next:
    inc si
    loop find_max
add al, '0'
mov ah, 0x0E
int 0x10
jmp $
vector db 7, 2, 9, 4
times 510-($-$$) db 0
dw 0xAA55