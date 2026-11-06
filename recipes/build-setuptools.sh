#!/bin/sh
# setuptools 84.2.1 — pure-python install from the sdist: the package,
# the _distutils_hack shim, its distutils-precedence.pth activator (makes
# `import distutils` resolve via setuptools._distutils on python >= 3.12)
# and an assembled dist-info (METADATA from the sdist PKG-INFO).
set -e

V=84.2.1
SP="$DESTDIR/usr/lib/python3.14/site-packages"
DI="$SP/setuptools-$V.dist-info"

mkdir -p "$SP" "$DI"
cp -a setuptools _distutils_hack "$SP/"
cp PKG-INFO "$DI/METADATA"

cat > "$DI/WHEEL" <<WEOF
Wheel-Version: 1.0
Generator: zeta-makepkg
Root-Is-Purelib: true
Tag: py3-none-any
WEOF

printf "import os; var='SETUPTOOLS_USE_DISTUTILS'; enabled=os.environ.get(var, 'local')=='local'; enabled and __import__('_distutils_hack').add_shim();\n" > "$SP/distutils-precedence.pth"

python3 - "$SP" "$DI" <<'RECEOF'
import base64, csv, hashlib, os, sys
sp, di = sys.argv[1], sys.argv[2]
rows = []
for base in (os.path.join(sp, "setuptools"), os.path.join(sp, "_distutils_hack"),
             os.path.join(sp, "distutils-precedence.pth")):
    if os.path.isdir(base):
        for dirpath, dirnames, filenames in os.walk(base):
            for fn in sorted(filenames):
                full = os.path.join(dirpath, fn)
                data = open(full, "rb").read()
                digest = base64.urlsafe_b64encode(
                    hashlib.sha256(data).digest()).rstrip(b"=").decode()
                rows.append((os.path.relpath(full, sp), "sha256=" + digest, str(len(data))))
    elif os.path.isfile(base):
        data = open(base, "rb").read()
        digest = base64.urlsafe_b64encode(
            hashlib.sha256(data).digest()).rstrip(b"=").decode()
        rows.append((os.path.relpath(base, sp), "sha256=" + digest, str(len(data))))
rows.append((os.path.basename(di) + "/RECORD", "", ""))
rows.sort()
with open(os.path.join(di, "RECORD"), "w", newline="") as fh:
    csv.writer(fh).writerows(rows)
RECEOF
