#!/bin/sh
# mate-applets: configure wants itstool (build-time doc tool) — stub it.
set -e
mkdir -p .stub
printf "#!/bin/sh\nexit 0\n" > .stub/itstool
chmod +x .stub/itstool
export PATH="$PWD/.stub:$PATH"
./configure --prefix=/usr --disable-static --disable-gtk-doc --disable-introspection
make -j"$(nproc)"
make DESTDIR="$DESTDIR" install
