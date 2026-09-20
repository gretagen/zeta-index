return {
  name    = "libice",
  version = "1.1.2",
  summary = "X11 Inter-Client Exchange library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libice/libice.pkg.tar.zst",
  sha256  = "bb613be39e5bc1707a39f895c178674bbda52f022da51612e7a10a386608e107",
  deps    = { "xorgproto", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
