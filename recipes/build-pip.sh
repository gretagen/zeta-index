#!/bin/sh
# pip 26.2.2 — pure-python install straight from the sdist: copy the
# package, assemble its dist-info (pip reports its own version through
# importlib.metadata, so METADATA must ship — taken from the sdist's own
# PKG-INFO, upstream's metadata for this exact release) and write the
# pip/pip3 console shims declared in pyproject [project.scripts].
set -e

V=26.2.2
SP="$DESTDIR/usr/lib/python3.14/site-packages"
DI="$SP/pip-$V.dist-info"

mkdir -p "$DI" "$DESTDIR/usr/bin"
cp -a src/pip "$SP/pip"
cp PKG-INFO "$DI/METADATA"

cat > "$DI/WHEEL" <<'EOF'
Wheel-Version: 1.0
Generator: zeta-makepkg
Root-Is-Purelib: true
Tag: py3-none-any
EOF

cat > "$DI/entry_points.txt" <<'EOF'
[console_scripts]
pip=pip._internal.cli.main:main
pip3=pip._internal.cli.main:main
EOF

mkdir -p "$DI/licenses/pip"
cp LICENSE.txt "$DI/licenses/pip/LICENSE.txt"

# Console shims (the standard distlib template for console_scripts).
for s in pip pip3; do
  cat > "$DESTDIR/usr/bin/$s" <<'EOF'
#!/usr/bin/python3
# -*- coding: utf-8 -*-
import re
import sys
from pip._internal.cli.main import main
if __name__ == "__main__":
    sys.argv[0] = re.sub(r"(-script\.pyw|\.exe)?$", "", sys.argv[0])
    sys.exit(main())
EOF
  chmod 755 "$DESTDIR/usr/bin/$s"
done

# RECORD: hash every installed file so pip can inspect itself properly.
python3 - "$SP" "$DI" <<'EOF'
import base64, csv, hashlib, os, sys
sp, di = sys.argv[1], sys.argv[2]
rows = []
for base in (os.path.join(sp, "pip"), di):
    for dirpath, dirnames, filenames in os.walk(base):
        for fn in sorted(filenames):
            full = os.path.join(dirpath, fn)
            data = open(full, "rb").read()
            digest = base64.urlsafe_b64encode(
                hashlib.sha256(data).digest()).rstrip(b"=").decode()
            rows.append((os.path.relpath(full, sp), "sha256=" + digest,
                         str(len(data))))
rows.append((os.path.basename(di) + "/RECORD", "", ""))
rows.sort()
with open(os.path.join(di, "RECORD"), "w", newline="") as fh:
    csv.writer(fh).writerows(rows)
EOF
