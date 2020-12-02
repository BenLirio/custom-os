mov ah, 0x0e

mov bx, message
add bx, 0x7c00

print_letter:
	mov al, [bx]
	cmp al, 0x00
	je end_block
	int 0x10
	add bx, 0x01
	jmp print_letter

end_block:
jmp $

message:
	dw "Hello, World", 0

times 510-($-$$) db 0
dw 0xaa55
