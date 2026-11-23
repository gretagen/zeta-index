#!/bin/sh
# fortune-mod 1.99.1: no configure script — a multilevel plain makefile
# (INSTALL explicitly warns against calling subdir makes directly).
#
# Phase 1 builds with the default prefix so the baked-in cookie paths
# (-DFORTDIR="$(COOKIEDIR)") and the generated fortune.man embed
# /usr/share/games/fortunes, not a stage path. Phase 2 installs with
# prefix=$DESTDIR; -o marks the phony build targets as old so install
# copies the prebuilt files instead of recompiling them under the
# staged prefix. FORTDIR is forced to /usr/bin (upstream: /usr/games,
# not on this distro's PATH). CC passed explicitly — no cc symlink on
# this host.
# CC carries -std=gnu17: fortune's fallback bool typedef (used when
# HAVE_STDBOOL_H is undefined — there is no configure to set it) is a
# hard error under GCC's C23 default, where bool is a keyword.
set -e

make CC='gcc -std=gnu17'
make CC='gcc -std=gnu17' fortune/fortune.man
make CC='gcc -std=gnu17' -o fortune-bin -o util-bin -o cookies-z install \
     prefix="$DESTDIR" FORTDIR="$DESTDIR/usr/bin"
