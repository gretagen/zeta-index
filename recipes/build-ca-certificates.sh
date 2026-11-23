#!/bin/sh
# ca-certificates: place the bundle at the standard path and provide the
# /etc/ssl/cert.pem alias (openssl-style apps hardcode it). Relative
# symlink, self-contained inside the tree.
set -e

install -Dm644 cacert.pem "$DESTDIR/etc/ssl/certs/ca-certificates.crt"
mkdir -p "$DESTDIR/etc/ssl"
ln -s certs/ca-certificates.crt "$DESTDIR/etc/ssl/cert.pem"
