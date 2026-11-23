#!/bin/sh
# tinfo: install the single pkg-config module.
set -e

install -Dm644 tinfo.pc "$DESTDIR/usr/lib/pkgconfig/tinfo.pc"
