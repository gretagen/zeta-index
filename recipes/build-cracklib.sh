#!/bin/sh
# cracklib 2.10.4: password-strength library + the English word list
# (pinned digest, fetched like the mozjs patch). The dictionary itself is
# generated on the host after install (create-cracklib-dict writes to the
# compiled-in path, which cannot be staged).
set -e

./configure --prefix=/usr --disable-static \
  --with-default-dict=/usr/lib/cracklib/pw_dict
make -j"$(nproc)"
make install DESTDIR="$DESTDIR"

mkdir -p "$DESTDIR/usr/share/dict"
curl -sfL -o /tmp/cracklib-words.xz \
  "https://github.com/cracklib/cracklib/releases/download/v2.10.4/cracklib-words-2.10.4.xz"
echo "b3d1e0e0ae9bc7ffed65c0042d7c68bdb903368aa6b918f94572453c6ea874dc  /tmp/cracklib-words.xz" | sha256sum -c -
xz -dc /tmp/cracklib-words.xz > "$DESTDIR/usr/share/dict/cracklib-words"
