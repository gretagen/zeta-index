#!/bin/sh
# Small guile modules without a shipped configure: autoreconf path.
# (Used by guile-zlib and guile-git; runs ./bootstrap instead when the
# tree carries one and a gnulib gl/ dir.)
set -e

export ACLOCAL_PATH=/usr/share/gettext/m4${ACLOCAL_PATH:+:$ACLOCAL_PATH}
touch NEWS AUTHORS ChangeLog README
if [ -d gl ] && [ -f bootstrap ]; then
  ./bootstrap
else
  autoreconf -fi
fi
./configure --prefix=/usr --libdir=/usr/lib
make -j"$(nproc 2>/dev/null || echo 4)"
make install DESTDIR="$DESTDIR"
