return {
  name = "util-macros",
  version = "1.20.2",
  summary = "X.Org Autoconf macros (build-time dependency)",
  url = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/util-macros/util-macros-1.20.2.tar.gz",
  sha256 = "cffbda9c8c1852db1d671ad11e716c2d87ff437f325721cc7e3c3878bfb8c12f",
  deps = {},
  archive = { strip = 1 },
  test = function(p)
    p:run("test -f '" .. p.install_root .. "'/usr/share/pkgconfig/xorg-macros.pc")
  end,
}
