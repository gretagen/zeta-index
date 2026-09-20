return {
  name    = "libblockdev-crypto",
  version = "3.5.0",
  summary = "A library for manipulating block devices - crypto support",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libblockdev-crypto/libblockdev-crypto.pkg.tar.zst",
  sha256  = "3f1637ecc3a63ac4509decc5f4c6e64242fdac852948c4d2d0b147daefadf74a",
  deps    = { "glib2", "keyutils", "libblockdev", "libgcc", "nss", "util-linux-libs", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
