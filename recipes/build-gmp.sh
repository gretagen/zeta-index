#!/bin/sh
# gmp 6.3.0 + GCC 15/16: configure's "long long reliability" conftests are
# written against pre-C23 prototype semantics ("int g()" accepts arguments).
# GCC's gnu23 default treats "()" as "(void)" and the test fails to compile,
# aborting configure. Pin gnu17 for the build.
set -e

CC="gcc -std=gnu17" ./configure --prefix=/usr --disable-cxx --disable-static
jobs=$(nproc 2>/dev/null || echo 4)
make -j"$jobs"
make install DESTDIR="$DESTDIR"
