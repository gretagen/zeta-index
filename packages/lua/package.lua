return {
  name    = "lua",
  version = "5.5.1",
  summary = "Lua 5.5 shared library (liblua) for embedding",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/lua/lua-5.5.1.tar.gz",
  sha256  = "6deeb1f95a3ea2bdf1ca06255af045541c2ff3bdb22c00eb0e6beee6a43ccccc",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/liblua.so.5.5")
  end,
}
