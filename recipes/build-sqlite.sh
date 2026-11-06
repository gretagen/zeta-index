#!/bin/sh
# sqlite 3.53.4-3: upstream leaves LDFLAGS.libsqlite3.soname empty by
# default (sqlite.org forum post 5a3b44f510df8ded) — distros must pass it,
# otherwise consumers link by absolute path. Set the classic soname.
set -e

./configure --prefix=/usr --disable-static
make -j"$(nproc)" LDFLAGS.libsqlite3.soname="-Wl,-soname,libsqlite3.so.0"
make install DESTDIR="$DESTDIR" LDFLAGS.libsqlite3.soname="-Wl,-soname,libsqlite3.so.0"
