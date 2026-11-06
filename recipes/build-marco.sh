#!/bin/sh
# marco 1.28.1: configure hard-checks itstool on PATH, but it is a
# build-time doc tool only (release tarballs ship pregenerated man pages)
# — stub it. Everything else builds normally.
set -e

mkdir -p .stub
printf "#!/bin/sh\nexit 0\n" > .stub/itstool
chmod +x .stub/itstool
export PATH="$PWD/.stub:$PATH"

./configure --prefix=/usr --disable-static --disable-gtk-doc --disable-introspection
make -j"$(nproc)"
make DESTDIR="$DESTDIR" install
