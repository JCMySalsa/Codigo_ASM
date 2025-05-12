org 0x7C00
mov si, vector
mov di, si
add di, 2  ; Último elemento
reverse:
    mov al, [si]
    mov bl, [di]
    mov [si], bl
    mov [di], al
    inc si
    dec di
    cmp si, di
    jl reverse
; Imprimir vector invertido
mov si, vector
mov cx, 3
print:
    lodsb
    mov ah, 0x0E
    int 0x10
    loop print
jmp $
vector db 'A', 'B', 'C'
times 510-($-$$) db 0
dw 0xAA55