#!/bin/sh
# identity 1.0 — the Haliade system identity, shipped as /etc/os-release.
# Single source of truth for the OS name/version/codename; the base
# metapackage depends on it so every system carries one canonical file.
set -e

mkdir -p "$DESTDIR/etc"
cat > "$DESTDIR/etc/os-release" <<'EOF'
NAME="HaliadeSYS"
PRETTY_NAME="HaliadeSYS (Ver 1.0 : Savonius)"
ID=haliade
VERSION_CODENAME=savonius
VERSION="1.0"
HOME_URL="https://github.com/gretagen/HaliadeSYS"
LOGO=haliade
EOF
