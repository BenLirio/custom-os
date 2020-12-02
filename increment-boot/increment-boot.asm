mov ah, 0x0e
mov al, 0x30

loop :
cmp al, 0x38
je then_block
jmp else_block

then_block :
mov al, 0x30
jmp end_block

else_block :
add al, 0x01

end_block :
int 0x10

jmp loop

times 510-($-$$) db 0
dw 0xaa55
