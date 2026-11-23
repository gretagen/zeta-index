#!/bin/sh
# foundation 0.1.0: a single self-contained bash script — install it
# as the tower command. Nothing else to build.
set -e

install -Dm755 tower "$DESTDIR/usr/bin/tower"
