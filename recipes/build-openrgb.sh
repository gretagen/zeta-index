#!/bin/sh
# openrgb 1.1: qmake build (the project left cmake for qmake+Qt).
# Qt6 via qmake6 (qtbase6 is the distro's Qt). make install uses
# INSTALL_ROOT (qmake convention) instead of DESTDIR. The upstream
# systemd service is swept by clean_stage — init-agnostic.
set -e

mkdir build
cd build
qmake6 ../OpenRGB.pro
make -j"$(nproc)"
make install INSTALL_ROOT="$DESTDIR"
