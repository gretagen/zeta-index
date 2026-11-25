#!/bin/sh
# foundation 0.3.0: the three commands — tower (deploy), capture (ISO
# build) and harness — nothing else to build.
set -e

install -Dm755 tower   "$DESTDIR/usr/bin/tower"
install -Dm755 capture "$DESTDIR/usr/bin/capture"
install -Dm755 harness "$DESTDIR/usr/bin/harness"
