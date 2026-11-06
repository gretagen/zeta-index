#!/bin/sh
# perl 5.42.3-3: same arch-style layout as -2, but -Dcc=gcc — -2 left
# Config with cc='cc' while the system ships no /usr/bin/cc, so every
# XS module build (Devel::CheckLib's compiler probe) died.
set -e

./Configure -des -Duseshrplib -Dccdlflags=\"-fPIC\" -Dcc=gcc \
  -Dprefix=/usr -Dvendorprefix=/usr \
  -Dprivlib=/usr/lib/perl5/5.42.3 \
  -Darchlib=/usr/lib/perl5/5.42.3/x86_64-linux-thread-multi \
  -Dsitelib=/usr/lib/perl5/site_perl/5.42.3 \
  -Dsitearch=/usr/lib/perl5/site_perl/5.42.3/x86_64-linux-thread-multi \
  -Dvendorlib=/usr/lib/perl5/vendor_perl/5.42.3 \
  -Dvendorarch=/usr/lib/perl5/vendor_perl/5.42.3/x86_64-linux-thread-multi \
  -Dinc_version_list=none \
  -Dman1dir=/usr/share/man/man1 -Dman3dir=/usr/share/man/man3 \
  -Dinstallman1dir=/usr/share/man/man1 -Dinstallman3dir=/usr/share/man/man3 \
  -Dcccdlflags="-fPIC" -Dlddlflags="-shared" \
  -Dusethreads \
  -Dcf_by=haliade -Dmyhostname=localhost -Dperladmin=root@localhost

make -j"$(nproc)"
make DESTDIR="$DESTDIR" install
