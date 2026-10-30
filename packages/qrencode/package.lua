return {
  name    = "qrencode",
  version = "4.1.1-4-x86_64",
  summary = "c library for encoding data in a QR Code symbol",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/qrencode/qrencode-4.1.1-4-x86_64.pkg.tar.zst",
  sha256  = "8ce056bd7e3b77713483f642aa1b82da044e3a7781296c217513c2902e1354a2",
  deps    = { "libpng" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/qrencode")
  end,
}
