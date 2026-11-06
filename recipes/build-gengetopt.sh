#!/bin/sh
# gengetopt 2.23.1:
# - bundled gnulib's "ISO C N3322" declaration blocks (gated for GCC>=15)
#   fail to parse against glibc 2.44 (the _Generic const-generic fallout);
#   the system libc declares bsearch/qsort/mem* properly anyway, so drop the
#   blocks from every gl/ header template before configure, and sweep the
#   generated headers afterwards (idempotent).
# - gnu17 keeps other pre-C23 gnulib constructs out of trouble as well.
set -e

strip_n3322() {
  for f in gl/*.h gl/*.in.h; do
    [ -f "$f" ] || continue
    sed -i "/\/\* Declarations for ISO C N3322\.  \*\//,/^#endif/d" "$f"
  done
}

strip_n3322
CFLAGS="-O2 -g -std=gnu17" ./configure --prefix=/usr
strip_n3322

make -j"$(nproc 2>/dev/null || echo 4)"
make install DESTDIR="$DESTDIR"
