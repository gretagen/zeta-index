#!/bin/sh
# libidn2 2.3.8 from the git archive: needs ./bootstrap (pinned gnulib
# clone, generates git-version-gen/po/m4 macros), hence patch + gengetopt
# + gettext m4 via ACLOCAL_PATH are prerequisites.
set -e

export ACLOCAL_PATH=/usr/share/gettext/m4${ACLOCAL_PATH:+:$ACLOCAL_PATH}
./bootstrap
./configure --prefix=/usr --disable-static
make -j"$(nproc 2>/dev/null || echo 4)"
make install DESTDIR="$DESTDIR"
