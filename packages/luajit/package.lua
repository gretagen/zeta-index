return {
  name    = "luajit",
  version = "2.1.1785763465",
  summary = "Just-in-time compiler and drop-in replacement for Lua 5.1",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/luajit/luajit-2.1.1785763465.tar.gz",
  sha256  = "f8f4ebaaae9d26dcce5d450187f8859878adea37595b65abe2b73d757a982fe6",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libluajit-5.1.so.2")
  end,
}
