#!/bin/sh
# axon 0.1.1: install the axon module + console entry point only —
# the textual chain moved to the python-textual package (declared as a
# dependency), so no pip step happens here anymore. DESTDIR+purelib
# lands the module at stage/usr/lib/python3.14/site-packages.
set -e

SP=$(python3 -c "import sysconfig; print(sysconfig.get_paths()['purelib'])")
mkdir -p "$DESTDIR$SP" "$DESTDIR/usr/bin"

# axon module itself (git archive is clean — __pycache__ is untracked)
cp -a axon "$DESTDIR$SP/axon"
find "$DESTDIR$SP/axon" -name __pycache__ -type d -exec rm -rf {} + 2>/dev/null || true

# console entry point (what pip's script generation would emit)
cat > "$DESTDIR/usr/bin/axon" <<'EOF'
#!/usr/bin/env python3
import sys
from axon.__main__ import main
sys.exit(main())
EOF
chmod 755 "$DESTDIR/usr/bin/axon"
