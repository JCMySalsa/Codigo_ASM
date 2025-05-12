org 0x7C00
mov al, 4
test al, 1
jz even
mov al, 'I'
jmp print
even:
    mov al, 'P'
print:
    mov ah, 0x0E
    int 0x10
jmp $
times 510-($-$$) db 0
dw 0xAA55