#!/bin/sh
# python-prompt_toolkit 3.0.53: pure-python terminal UI library, runtime
# dependency of hyfetch. Just the package tree (matches how the distro
# ships its other python-* modules).
set -e

SP="$DESTDIR/usr/lib/python3.14/site-packages"
mkdir -p "$SP"
cp -a src/prompt_toolkit "$SP/"
