#!/bin/bash
FILENAME="hello-world-boot"
nasm "${FILENAME}".asm -f bin -o "${FILENAME}".bin
qemu-system-x86_64 "${FILENAME}".bin
