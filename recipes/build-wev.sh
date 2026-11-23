#!/bin/sh
# wev 1.1.0: plain make — protocol sources are generated with
# wayland-scanner against the system wayland-protocols, the man page
# with scdoc; PREFIX=/usr makes the Makefile install to /usr/bin and
# /usr/share/man. DESTDIR is exported by zeta-makepkg and honored by
# the Makefile's install target. CC=gcc explicitly — make's built-in
# default is `cc`, which doesn't exist on this host.
set -e

make CC=gcc -j"$(nproc 2>/dev/null || echo 4)"
make CC=gcc install PREFIX=/usr
