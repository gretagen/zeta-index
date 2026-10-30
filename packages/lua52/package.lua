return {
  name    = "lua52",
  version = "5.2.4-8-x86_64",
  summary = "powerful lightweight programming language designed for extending applications",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/lua52/lua52-5.2.4-8-x86_64.pkg.tar.zst",
  sha256  = "29ec9a501e2b4b55cc3ef5fd30443e39826222eeab78fbf56833d322656823d0",
  deps    = { "readline" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/liblua5.2.so.5.2.4")
  end,
}
