#!/bin/sh
# neovim 0.12.6: upstream default build (USE_BUNDLED=ON). Every dep —
# libuv, luajit, luv, tree-sitter runtime, unibilium, utf8proc, lpeg —
# is downloaded by cmake.deps with sha256 pinning from deps.txt and
# linked static; crucially USE_BUNDLED_TS_PARSERS (default ON) builds
# the c/lua/vim/vimdoc/query/markdown grammars the 0.12 runtime needs
# (ftplugin/lua.lua now highlights via vim.treesitter, not 'syntax').
#
# DESTDIR must be EMPTY during the build: zeta-makepkg exports
# DESTDIR=<stage> to the whole script, and every dep's install step
# honors DESTDIR — they would all install into stage/<abs prefix>,
# leaving .deps/usr empty (lpeg and luv then fail: no lua.h). Only
# nvim's own install gets the real DESTDIR.
#
# The deps project installs parsers to .deps/usr/lib/nvim/parser and
# nvim bakes that build-tree path into parser_install_directories —
# nonexistent on an installed system — so copy them onto nvim's
# runtimepath search path (site/parser) explicitly.
set -e

stage="$DESTDIR"

# -static-libgcc: some static dep drags unwind/personality symbols, so
# the driver auto-adds NEEDED libgcc_s.so.1 — whose only index owner is
# the full gcc package. Embedding libgcc keeps the closure glibc-only.
DESTDIR= make CMAKE_BUILD_TYPE=Release \
     CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_EXE_LINKER_FLAGS=-static-libgcc" \
     -j"$(nproc 2>/dev/null || echo 4)"

DESTDIR="$stage" cmake --install build

mkdir -p "$stage/usr/share/nvim/site/parser"
cp .deps/usr/lib/nvim/parser/*.so "$stage/usr/share/nvim/site/parser/"
