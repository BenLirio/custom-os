#!/bin/bash
nasm stack-boot.asm -f bin -o stack-boot.bin
qemu-system-x86_64 stack-boot.bin
