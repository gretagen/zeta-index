#!/bin/sh
# remenos0.1.0: the zip-in-home game, packaged properly.
# remenos-fhs.patch replaces the two $HOME/remenos hardcodes: sfx resolves
# next to the script (works at /usr/share/remenos AND from ~/remenos),
# best score goes to XDG state with its directory created up front.
set -e

DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
git apply "$DIR/remenos-fhs.patch"

mkdir -p "$DESTDIR/usr/share/remenos/sfx" "$DESTDIR/usr/bin" "$DESTDIR/usr/share/doc/remenos"
install -m 755 game.sh "$DESTDIR/usr/share/remenos/game.sh"
install -m 644 sfx/letter.wav sfx/number.wav sfx/symbol.wav sfx/tick.wav "$DESTDIR/usr/share/remenos/sfx/"
install -m 644 read-me.txt "$DESTDIR/usr/share/doc/remenos/read-me.txt"
printf '#!/bin/sh\n# remenos - packaged launcher\nexec /usr/bin/bash /usr/share/remenos/game.sh "$@"\n' > "$DESTDIR/usr/bin/remenos"
chmod 755 "$DESTDIR/usr/bin/remenos"
