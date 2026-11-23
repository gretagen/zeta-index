#!/bin/sh
# sbctl 0.18: `make build` compiles the single binary and embeds
# VERSION (the release tarball ships the file, so the git describe
# fallback never runs). Man pages are skipped — the `man`/`install`
# targets invoke a2x/asciidoc, which this host lacks; everything else
# in upstream's install set is reproduced by hand below.
set -e

make build

install -Dm755 sbctl "$DESTDIR/usr/bin/sbctl"

# Completions are emitted by the binary itself (no efivar access).
./sbctl completion bash | install -D /dev/stdin "$DESTDIR/usr/share/bash-completion/completions/sbctl"
./sbctl completion zsh   | install -D /dev/stdin "$DESTDIR/usr/share/zsh/site-functions/_sbctl"
./sbctl completion fish  | install -D /dev/stdin "$DESTDIR/usr/share/fish/vendor_completions.d/sbctl.fish"

# Bootloader tooling (kernel-install/installkernel hooks) + license.
install -Dm755 contrib/kernel-install/91-sbctl.install "$DESTDIR/usr/lib/kernel/install.d/91-sbctl.install"
install -Dm755 contrib/installkernel/91-sbctl.install "$DESTDIR/usr/lib/kernel/postinst.d/91-sbctl.install"
install -Dm644 LICENSE "$DESTDIR/usr/share/licenses/sbctl/LICENSE"
