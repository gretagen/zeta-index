return {
  name    = "lua51",
  version = "5.1.5",
  summary = "Lua 5.1 interpreter library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/lua51/lua51-5.1.5.tar.gz",
  sha256  = "95d18c1323ba5562c147cb8cb8d1414244f0408496518fd5bf3e94dac0e98ead",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/liblua5.1.so.5.1")
  end,
}
