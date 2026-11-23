#!/bin/sh
# golang 1.27.3: unpack the official go.dev tree verbatim into
# /usr/lib/go and link the entry points into /usr/bin. The symlinks are
# relative (Zeta refuses to commit absolute ones) — `go` resolves its
# GOROOT from /proc/self/exe after the kernel follows the symlink, so
# GOROOT = <tree>/bin/.. = /usr/lib/go automatically.
set -e

src=$(pwd)
mkdir -p "$DESTDIR/usr/lib" "$DESTDIR/usr/bin"
cp -a "$src" "$DESTDIR/usr/lib/go"

# Go's source tree embeds ELF test fixtures (debug/elf/testdata has a
# libtiffxx.so_ sample with real NEEDED entries) that trip zeta's
# dependency closure check. They are inert test data — the toolchain's
# real binaries live in bin/ and pkg/tool/ (static), so drop every ELF
# outside those two directories.
find "$DESTDIR/usr/lib/go" -type f \
     ! -path "*/usr/lib/go/bin/*" ! -path "*/usr/lib/go/pkg/tool/*" \
  | while IFS= read -r f; do
      case "$(file -b "$f" 2>/dev/null)" in
        ELF*) rm -f "$f" ;;
      esac
    done
ln -s ../lib/go/bin/go    "$DESTDIR/usr/bin/go"
ln -s ../lib/go/bin/gofmt "$DESTDIR/usr/bin/gofmt"
