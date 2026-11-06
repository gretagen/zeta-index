#!/bin/sh
# MIT krb5 1.22.2: everything lives under src/ in the tarball (BLFS
# flow). Needed by gnome-control-center (kerberos provider) and by
# gnome-online-accounts' kerberos account provider.
set -e

cd src
./configure --prefix=/usr --sysconfdir=/etc --disable-static
# upstream WARN_CFLAGS hardcodes -Werror=discarded-qualifiers, which GCC 16
# trips in ccbase.c — keep plain -Wall instead
make -j"$(nproc)" WARN_CFLAGS="-Wall"
make install DESTDIR="$DESTDIR"
