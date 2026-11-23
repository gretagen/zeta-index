#!/bin/sh
# pulseplayer 0.1.0: install the app tree + entry point, then run
# upstream's full headless test suite against the staged tree as the
# build gate (Textual pilot tests, libmpv discoverability, layout
# regressions — the same thing nix flake check runs).
set -e

mkdir -p "$DESTDIR/usr/lib/pulseplayer" "$DESTDIR/usr/bin"
cp -a pulseplayer/main.py pulseplayer/config.py pulseplayer/pulse.tcss \
  "$DESTDIR/usr/lib/pulseplayer/"
find "$DESTDIR/usr/lib/pulseplayer" -name __pycache__ -type d -exec rm -rf {} + 2>/dev/null || true

# script-style app: sibling imports (`from config import …`) and
# CSS_PATH need the app dir on sys.path and __file__ set to main.py
cat > "$DESTDIR/usr/bin/pulseplayer" <<'EOF'
#!/usr/bin/env python3
import runpy
import sys
sys.path.insert(0, "/usr/lib/pulseplayer")
runpy.run_path("/usr/lib/pulseplayer/main.py", run_name="__main__")
EOF
chmod 755 "$DESTDIR/usr/bin/pulseplayer"

# upstream's suite against the STAGE (PYTHONPATH) — textual and libmpv
# resolve from the build host, stale pulse-music path insert is a no-op.
# PYTHONDONTWRITEBYTECODE keeps the run from dropping .pyc into the stage.
PYTHONDONTWRITEBYTECODE=1 PYTHONPATH="$DESTDIR/usr/lib/pulseplayer" python3 tests/test_smoke.py

# the test import above compiled bytecode into the stage — clean it out
# after the run, not before
find "$DESTDIR/usr/lib/pulseplayer" -name __pycache__ -type d -exec rm -rf {} + 2>/dev/null || true
