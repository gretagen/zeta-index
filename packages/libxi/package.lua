return {
  name    = "libxi",
  version = "1.8.3",
  summary = "X11 Input extension library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libxi/libxi.pkg.tar.zst",
  sha256  = "5ac5541f58978a3a5fab08c24f03da43200a7e9b25098e3e6da7bad7a0892cf0",
  deps    = { "libxext", "libxfixes", "libx11", "xorgproto", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
