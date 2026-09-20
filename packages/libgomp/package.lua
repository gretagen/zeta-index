return {
  name    = "libgomp",
  version = "16.2.1+r23+gd564253eb6c8",
  summary = "OpenMP library shipped by GCC",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libgomp/libgomp.pkg.tar.zst",
  sha256  = "ffad807ed2ea36a29fe6da70dd77a6c476f1a1d5357cbec0b2481dbc84f303f4",
  deps    = { },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
