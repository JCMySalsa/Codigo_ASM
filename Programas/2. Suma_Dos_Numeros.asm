org 0x7C00
mov al, 5
add al, 3
add al, '0'  ; Convertir a ASCII
mov ah, 0x0E
int 0x10
jmp $
times 510-($-$$) db 0
dw 0xAA55