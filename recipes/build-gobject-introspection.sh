#!/bin/sh
# gobject-introspection 1.86.0-2: guard upstream's module-level
# windows-only distutils import (crashes g-ir-scanner on python >= 3.12,
# where distutils was removed) — the only change vs 1.86.0.
set -e

python3 - <<'PYEOF'
from pathlib import Path
p = Path("giscanner/utils.py")
s = p.read_text()
old = """import distutils.cygwinccompiler
orig_get_msvcr = distutils.cygwinccompiler.get_msvcr  # type: ignore
distutils.cygwinccompiler.get_msvcr = get_msvcr_overwrite  # type: ignore
"""
new = """if __import__("sys").platform == "win32":
    import distutils.cygwinccompiler
    orig_get_msvcr = distutils.cygwinccompiler.get_msvcr  # type: ignore
    distutils.cygwinccompiler.get_msvcr = get_msvcr_overwrite  # type: ignore
"""
assert old in s, "patch anchor not found"
p.write_text(s.replace(old, new))
print("scanner patched")
PYEOF

meson setup build --prefix=/usr --buildtype=release -Dpython=/usr/bin/python3
ninja -C build
DESTDIR="$DESTDIR" ninja -C build install
