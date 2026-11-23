#!/bin/sh
# subspace-scripts 1.7.3: four standalone bash scripts — no build step.
# All four go to /usr/bin only: subspace-cli's setup() finds its
# siblings via SCRIPT_DIR (next to itself), copies them into /subspace/
# at runtime and adds /subspace to the user's PATH — the package must
# not ship anything into /subspace itself.
set -e

install -Dm755 subspace-cli   "$DESTDIR/usr/bin/subspace-cli"
install -Dm755 subspace-enter "$DESTDIR/usr/bin/subspace-enter"
install -Dm755 subspace-sync  "$DESTDIR/usr/bin/subspace-sync"
install -Dm755 subspace-run   "$DESTDIR/usr/bin/subspace-run"
