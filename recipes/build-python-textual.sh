#!/bin/sh
# python-textual 8.2.8: install the textual chain from the wheels that
# ship in the source tarball — --no-index keeps it fully offline, the
# recipe's sha256 pins every byte of the input. DESTDIR is exported by
# zeta-makepkg; purelib is the system site-packages path.
set -e

SP=$(python3 -c "import sysconfig; print(sysconfig.get_paths()['purelib'])")
mkdir -p "$DESTDIR$SP"

python3 -m pip install --no-compile --no-index --only-binary=:all: \
  --find-links=. --target "$DESTDIR$SP" textual==8.2.8
