;
; A simple boot sector that prints a message to the screen using BIOS routines
;

mov ah, 0x0e	; int 10/ah = 0eh -> scrolling teletype BIOS routine

mov al, 'H'
int 0x10
mov al, 'e'
int 0x10
mov al, 'l'
int 0x10
mov al, 'l'
int 0x10
mov al, 'o'
int 0x10

jmp $		; jump to the calling line forever

;
; Padding and majic BIOS number
;

times 510-($-$$) db 0 ; Pad the boot sector out with zeros

dw 0xaa55	; Last two bytes form the magic number
		; so BIOS knows we are a boot sector
