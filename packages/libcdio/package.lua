return {
  name    = "libcdio",
  version = "2.4.0",
  summary = "CD-ROM I/O library (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libcdio/libcdio-2.4.0.pkg.tar.zst",
  sha256  = "be3bf364e24ba2fc8662e85f884e9985c0324ecc46b0787cf82577bec7cb48b0",
  deps    = { "ncurses" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/ 2>/dev/null || ls " .. p.install_root .. "/usr/share/ 2>/dev/null")
  end,
}
