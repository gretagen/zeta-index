return {
  name    = "libxinerama",
  version = "1.1.6",
  summary = "Xinerama extension library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libxinerama/libxinerama-1.1.6-1-x86_64.pkg.tar.zst",
  sha256  = "7a91e2e649d9b24946b2b8088c3d7f70fa0673a96d3bae80497f403e57fb7654",
  deps    = { "glibc", "libxext", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
