#!/bin/sh
# gdm 51.1.1 (BLFS SysV flow): elogind as the logind provider, no
# systemd units of either flavor — dbus activation + local config only,
# so any init works (iniswap-clean). PAM preset: none (the greeter is
# packaged for its libgdm + Gdm-1.0 typelib, which gnome-shell hard
# imports even outside GDM sessions; no distro PAM stack is chosen for
# it). The BLFS elogind PAM fixup is applied to the shipped preset anyway
# so the lfs variant stays usable if ever selected.
set -e

sed -e 's@systemd@elogind@' \
    -e 's/-session optional/-session required/' \
    -e '/elogind/isession  required       pam_loginuid.so' \
    -i data/pam-lfs/gdm-launch-environment.pam 2>/dev/null || true

meson setup build --prefix=/usr --buildtype=release --libdir=/usr/lib \
  --wrap-mode=nodownload \
  -Dgdm-xsession=true \
  -Dinitial-vt=7 \
  -Drun-dir=/run/gdm \
  -Dlogind-provider=elogind \
  -Dsystemd-journal=false \
  -Dsystemdsystemunitdir=no \
  -Dsystemduserunitdir=no \
  -Ddefault-pam-config=none
ninja -C build
DESTDIR="$DESTDIR" ninja -C build install
