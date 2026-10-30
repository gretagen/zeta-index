return {
  name    = "lua53",
  version = "5.3.6-4-x86_64",
  summary = "powerful lightweight programming language designed for extending applications",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/lua53/lua53-5.3.6-4-x86_64.pkg.tar.zst",
  sha256  = "3cb348a5c7879927fdf2e2fb0266e57c970e3ab832c4a6722a20cf769c294ab7",
  deps    = { "readline" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/liblua5.3.so.5.3.6")
  end,
}
