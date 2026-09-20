return {
  name    = "libgcc",
  version = "16.2.1+r23+gd564253eb6c8",
  summary = "Low-level runtime library shipped by GCC",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libgcc/libgcc.pkg.tar.zst",
  sha256  = "7367dad49fc3229bde804816d412ab77306d433b1f92e4126b8b3ba3502c67d6",
  deps    = { },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
