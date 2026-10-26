#!/bin/sh
set -eu
cargo build --release --locked
install -Dm755 target/release/yazi "$DESTDIR/usr/bin/yazi"
install -Dm755 target/release/ya "$DESTDIR/usr/bin/ya"
