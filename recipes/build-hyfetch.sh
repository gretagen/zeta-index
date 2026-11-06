#!/bin/sh
# hyfetch 2.1.1: hybrid rust+python pride-fetch. Builds the rust engine
# (cargo, Cargo.lock pinned), installs the python package plus the
# embedded neofetch tree, drops the rust binary where run_rust() looks for
# it (site-packages/hyfetch/rust/hyfetch — SRC = package dir), and writes
# the four [project.scripts] entry points as python shims.
set -e

export CC=gcc
cargo build --release

SP="$DESTDIR/usr/lib/python3.14/site-packages"
mkdir -p "$SP" "$DESTDIR/usr/bin"
cp -a hyfetch "$SP/hyfetch"
if [ -f neofetch ]; then cp -a neofetch "$SP/neofetch"; fi
mkdir -p "$SP/hyfetch/rust"
install -m 755 target/release/hyfetch "$SP/hyfetch/rust/hyfetch"

for pair in "hyfetch:run_rust" "hyfetch.v1:run_py" "hyfetch.rs:run_rust" "neowofetch:run_neofetch"; do
  name=${pair%%:*}
  fn=${pair##*:}
  printf '#!/usr/bin/python3\nfrom hyfetch.__main__ import %s\n%s()\n' "$fn" "$fn" \
    > "$DESTDIR/usr/bin/$name"
  chmod 755 "$DESTDIR/usr/bin/$name"
done
