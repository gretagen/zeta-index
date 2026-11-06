#!/bin/sh
# libtasn1 4.21.0 from the gitlab tag archive: uses gnulib (src/gl/m4),
# so ./bootstrap is required (pinned GNULIB_REVISION in bootstrap.conf).
# The tag archive also omits build-aux/git-version-gen used by AC_INIT -
# provide the tag version deterministically.
set -e

export ACLOCAL_PATH=/usr/share/gettext/m4${ACLOCAL_PATH:+:$ACLOCAL_PATH}
mkdir -p build-aux
printf '#!/bin/sh\necho 4.21.0\n' > build-aux/git-version-gen
chmod +x build-aux/git-version-gen
touch NEWS AUTHORS ChangeLog README
./bootstrap
./configure --prefix=/usr --libdir=/usr/lib --disable-static
make -j"$(nproc 2>/dev/null || echo 4)"
make install DESTDIR="$DESTDIR"
