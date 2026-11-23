#!/bin/sh
# funstuff 0.1.1: install the five commands, gynoidsay's ascii art and
# badapple's frame file, applying three portability patches on the way
# (the sources in ~/funstuff stay untouched for local use):
#   weather   — prepend #!/bin/sh (it was a bare `curl wttr.in` line).
#   gynoidsay — CWD-relative artfile becomes absolute so the installed
#               binary finds /usr/lib/gynoidsay/ascii from any directory.
#   badapple  — frame lookup gains /usr/lib/badapple/BadApple_ASCII.ps1
#               as first candidate (it only searched next-to-script,
#               cwd and ~/BadApple-ASCII-Terminal, i.e. it worked only
#               on the author's machine).
set -e

for s in badapple fan turbine; do
  install -Dm755 "$s" "$DESTDIR/usr/bin/$s"
done

sed '1i #!/bin/sh' weather > weather.patched
install -Dm755 weather.patched "$DESTDIR/usr/bin/weather"

sed 's|"usr/lib/gynoidsay/ascii"|"/usr/lib/gynoidsay/ascii"|' gynoidsay > gynoidsay.patched
install -Dm755 gynoidsay.patched "$DESTDIR/usr/bin/gynoidsay"

sed 's|"\$here/BadApple_ASCII\.ps1"|"/usr/lib/badapple/BadApple_ASCII.ps1" "$here/BadApple_ASCII.ps1"|' \
  badapple > badapple.patched
install -Dm755 badapple.patched "$DESTDIR/usr/bin/badapple"

install -Dm644 usr/lib/gynoidsay/ascii "$DESTDIR/usr/lib/gynoidsay/ascii"
install -Dm644 usr/lib/badapple/BadApple_ASCII.ps1 "$DESTDIR/usr/lib/badapple/BadApple_ASCII.ps1"
