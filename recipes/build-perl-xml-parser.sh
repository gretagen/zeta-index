#!/bin/sh
# perl-xml-parser 2.47: XS module into perl's vendor dirs.
set -e
perl Makefile.PL INSTALLDIRS=vendor PREFIX=/usr
make
make DESTDIR="$DESTDIR" install
