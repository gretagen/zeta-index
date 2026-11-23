#!/bin/sh
# ash 0.1.0: assemble, link, strip — upstream's exact three-step build
# (README: nasm -f elf64, ld, strip). nasm/binutils are ambient host
# build tools; output is a static freestanding binary.
set -e

nasm -f elf64 ash.asm -o ash.o
ld ash.o -o ash
strip ash
install -Dm755 ash "$DESTDIR/usr/bin/ash"
