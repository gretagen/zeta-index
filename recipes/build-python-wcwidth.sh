#!/bin/sh
# python-wcwidth 0.9.4: character-cell width library, runtime dependency of
# prompt_toolkit (imported by prompt_toolkit.utils). Module tree copied into
# site-packages (distro convention for python-* packages).
set -e

SP="$DESTDIR/usr/lib/python3.14/site-packages"
mkdir -p "$SP"
cp -a wcwidth "$SP/"
