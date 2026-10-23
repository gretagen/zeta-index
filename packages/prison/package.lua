return {
  name    = "prison",
  version = "6.13.0",
  summary = "KDE: prison is a barcode api currently offering a nice Qt api to produce QRCode barcodes and Da",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/prison/prison-6.13.0.tar.gz",
  sha256  = "fbb2c51fc3d45af58c924ae3293669a042d56cbe1ac08f40c95944cfbc1c7d07",
  deps    = { "glibc", "qtbase", "gcc", "qtdeclarative", "libqrencode" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}
