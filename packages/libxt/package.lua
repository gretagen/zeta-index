return {
  name    = "libxt",
  version = "1.3.1",
  summary = "X11 toolkit intrinsics library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libxt/libxt.pkg.tar.zst",
  sha256  = "5d4ee1f73c946cdd9b908b127157d6d826d198be982c91e199daf6bdd7f6b9ec",
  deps    = { "libsm", "libx11", "libice", "xorgproto", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
