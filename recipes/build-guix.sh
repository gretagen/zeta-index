#!/bin/sh
# guix 1.5.0 from the official release tarball (configure pre-generated).
# Requires the packaged guile module stack to be INSTALLED first:
# guile-gnutls, guile-gcrypt, guile-sqlite3, guile-ssh, guile-git,
# guile-json, guile-zlib, guile-lzlib, guile-semver.
set -e

export ACLOCAL_PATH=/usr/share/gettext/m4${ACLOCAL_PATH:+:$ACLOCAL_PATH}
./configure --prefix=/usr --libdir=/usr/lib
make -j"$(nproc 2>/dev/null || echo 4)"
make install DESTDIR="$DESTDIR"
