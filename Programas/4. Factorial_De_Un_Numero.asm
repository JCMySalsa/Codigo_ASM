org 0x7C00
mov ax, 1
mov cx, 5
factorial:
    mul cx
    loop factorial
; Convertir AX a ASCII e imprimir (ejemplo simplificado)
mov ah, 0x0E
add al, '0'
int 0x10
jmp $
times 510-($-$$) db 0
dw 0xAA55