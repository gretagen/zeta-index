return {
  name    = "luv",
  version = "1.52.1-0",
  summary = "libuv bindings for LuaJIT",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/luv/luv-1.52.1-0.tar.gz",
  sha256  = "06259aca07b11566b96c80a570b3b4afb6b592c8c5800f5c1b545e68107de0e0",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libluv.so.1")
  end,
}
