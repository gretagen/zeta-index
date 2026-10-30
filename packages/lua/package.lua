return {
  name    = "lua",
  version = "5.5.1-2",
  summary = "Lua 5.5 shared library (liblua) for embedding",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/lua/lua-5.5.1-2.tar.gz",
  sha256  = "52f6a5b72c9c98bcd0b0c473175342bc7d737f8351e4fdb387c5076f01029120",
  deps    = { "glibc", "readline" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/liblua.so.5.5 && test -x " .. p.install_root .. "/usr/bin/lua && " .. p.install_root .. "/usr/bin/lua -v 2>&1 | grep -q 5.5.1 && ! grep -q llua5.5 " .. p.install_root .. "/usr/lib/pkgconfig/lua.pc && ! grep -q llua5.5 " .. p.install_root .. "/usr/lib/pkgconfig/lua5.5.pc && printf \"#include <lua.h>\\n#include <lauxlib.h>\\nint main(void){lua_State *L = luaL_newstate(); if (L) lua_close(L); return 0;}\\n\" | gcc -x c - -o /tmp/lua-link-smoke $(PKG_CONFIG_PATH=" .. p.install_root .. "/usr/lib/pkgconfig PKG_CONFIG_SYSROOT_DIR=" .. p.install_root .. " pkg-config --cflags --libs lua5.5) && rm -f /tmp/lua-link-smoke")
  end,
}
