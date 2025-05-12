org 0x7C00
mov al, 4
mov bl, 3
mul bl
; Convertir AL a dos dígitos ASCII (ejemplo simplificado)
add ax, '00'
mov ah, 0x0E
int 0x10
jmp $
times 510-($-$$) db 0
dw 0xAA55