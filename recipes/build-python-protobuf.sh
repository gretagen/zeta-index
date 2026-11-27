#!/bin/sh
# python-protobuf 7.36.2: install the wheel from the local tarball —
# --no-index keeps it offline (sha256 pins the input). DESTDIR is
# exported by zeta-makepkg; purelib is the system site-packages path.
set -e

SP=$(python3 -c "import sysconfig; print(sysconfig.get_paths()['purelib'])")
mkdir -p "$DESTDIR$SP"

python3 -m pip install --no-compile --no-index --only-binary=:all: \
  --find-links=. --target "$DESTDIR$SP" protobuf==7.36.2
