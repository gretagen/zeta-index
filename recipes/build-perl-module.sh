#!/bin/sh
# Generic pure-perl module build (vendor dirs, like perl-xml-parser).
# PERL5LIB seeds blib so install steps that load the module being
# installed (XML-SAX registers itself) work under DESTDIR.
set -e
perl Makefile.PL INSTALLDIRS=vendor PREFIX=/usr
make
PERL5LIB="$PWD/blib/lib:$PWD/blib/arch${PERL5LIB:+:$PERL5LIB}" make DESTDIR="$DESTDIR" install
