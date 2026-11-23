#!/bin/sh
# recode 3.7.17: autotools with two upstream/build-environment problems
# worked around here:
#
# 1. The man rule shells out to `help2man --locale=en_US.UTF-8`, which
#    refuses to run without Perl's Locale::gettext (absent — porting a
#    perl module for a man page is silly). Fix: build the binary, emit
#    recode.1 with the same help2man call minus --locale, then run the
#    full build — recode.1 is then newer than its prerequisites and the
#    rule is skipped.
# 2. The sources use gnulib's _GL_ATTRIBUTE_* macros, but this tree
#    never generates the gnulib headers that define them (no
#    attributes.h rule, no lib/stdio.h rule — only m4 references), and
#    O_BINARY (a Windows-ism) is undeclared. Fix: a tiny compat header
#    force-included via CPPFLAGS, plus -DO_BINARY=0.
#
# DESTDIR comes from zeta-makepkg's environment for `make install`.
set -e

cat > recode-attrs.h <<'EOF'
#ifndef RECODE_ATTRS_H
#define RECODE_ATTRS_H
#ifndef _GL_ATTRIBUTE_FORMAT
#define _GL_ATTRIBUTE_FORMAT(spec) __attribute__ ((__format__ spec))
#endif
#ifndef _GL_ATTRIBUTE_FORMAT_PRINTF_SYSTEM
#define _GL_ATTRIBUTE_FORMAT_PRINTF_SYSTEM(f, a) \
  _GL_ATTRIBUTE_FORMAT ((__printf__, f, a))
#endif
#ifndef _GL_ATTRIBUTE_CONST
#define _GL_ATTRIBUTE_CONST __attribute__ ((__const__))
#endif
#ifndef _GL_ATTRIBUTE_PURE
#define _GL_ATTRIBUTE_PURE __attribute__ ((__pure__))
#endif
#ifndef _GL_ATTRIBUTE_MALLOC
#define _GL_ATTRIBUTE_MALLOC __attribute__ ((__malloc__))
#endif
#endif
EOF

./configure --prefix=/usr --disable-static \
     CPPFLAGS="-DO_BINARY=0 -include $PWD/recode-attrs.h"

make -k -j"$(nproc 2>/dev/null || echo 4)" || true
(cd src && help2man --include=recode.x ./recode > recode.1)
make -j"$(nproc 2>/dev/null || echo 4)"
make install
# Belt: on the very first run install-data skipped the man page once
# (not reproducible afterwards); make sure it lands either way.
test -f "$DESTDIR/usr/share/man/man1/recode.1" \
  || make -C src install-man1 DESTDIR="$DESTDIR"
