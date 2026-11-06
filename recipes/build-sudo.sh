#!/bin/sh
# sudo 1.9.17p2 + CVE-2026-96512 fix (TZ bypass).
# Upstream 1.9.18 is not released yet; both patches are Todd C. Miller's
# own commits, carried by Ubuntu/Debian: pre1 (ignore user TZ) then the
# final fix (remove TZ from sudo's working environment).
# --with-insults sets the USE_INSULTS compile gate - without it the
# sudoers "insults" Defaults entry would be unknown at runtime.
set -e

DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
git apply "$DIR/cve-2026-96512-pre1.patch"
git apply "$DIR/cve-2026-96512.patch"

./configure --prefix=/usr --sysconfdir=/etc \
  --with-pam --with-rundir=/run/sudo --with-vardir=/var/lib/sudo \
  --with-insults
jobs=$(nproc 2>/dev/null || echo 4)
make -j"$jobs"
# install_uid/gid default to 0:0 (chown on install); stage as the invoking
# user - zeta re-chowns everything to root on install.
make install DESTDIR="$DESTDIR" install_uid="$(id -u)" install_gid="$(id -g)"
