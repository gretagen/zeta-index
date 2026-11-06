#!/bin/sh
# sassc 3.6.2: CLI SASS compiler, build-time requirement of gtk4 (theme
# CSS). Links the installed libsass archive via SASS_LIBSASS_PATH=/usr.
set -e

make -j"$(nproc)" PREFIX=/usr CC=gcc CXX=g++ SASS_LIBSASS_PATH=/usr -o libsass-static
make install PREFIX=/usr CC=gcc CXX=g++ SASS_LIBSASS_PATH=/usr -o libsass-static -o libsass-install-static DESTDIR="$DESTDIR"
