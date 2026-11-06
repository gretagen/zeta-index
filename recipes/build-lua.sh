#!/bin/sh
# lua 5.5.1-2: same payload as 5.5.1 (PIC static+shared lib, interpreter,
# luac, headers under include/lua5.5) but the pkg-config files now say
# -llua, matching the liblua.so on disk — the old -llua5.5 made every
# pkg-config consumer fail to link (weechat was the first victim).
set -e

V=5.5.1
U="$DESTDIR/usr"

# One pass builds PIC objects, the static archive and both binaries; the
# readline flag only ever mattered to lua.c, so a single SYSCFLAGS is safe.
make -C src clean
make -C src SYSCFLAGS="-DLUA_USE_LINUX -DLUA_USE_READLINE -fPIC" \
     SYSLIBS="-Wl,-E -ldl -lreadline" a lua luac

# Shared library from the PIC archive (whole-archive so no lua.o/luac.o
# main() sneaks in), with the soname the existing payload already used.
gcc -O2 -Wall -shared -Wl,-soname,liblua.so.5.5 -o liblua.so.5.5 \
    -Wl,--whole-archive src/liblua.a -Wl,--no-whole-archive -lm -ldl

mkdir -p "$U/include/lua5.5" "$U/lib/pkgconfig" "$U/bin"
cp src/lua.h src/luaconf.h src/lualib.h src/lauxlib.h src/lua.hpp "$U/include/lua5.5/"
cp src/liblua.a "$U/lib/"
cp liblua.so.5.5 "$U/lib/"
ln -s liblua.so.5.5 "$U/lib/liblua.so"
install -m 755 src/lua src/luac "$U/bin/"

for pc in lua lua5.5; do
cat > "$U/lib/pkgconfig/$pc.pc" <<EOF
prefix=/usr
exec_prefix=\${prefix}
libdir=\${exec_prefix}/lib
includedir=\${prefix}/include/lua5.5

Name: Lua
Description: An extension programming language
Version: $V
Libs: -L\${libdir} -llua
Libs.private: -lm -ldl
Cflags: -I\${includedir}
EOF
done
