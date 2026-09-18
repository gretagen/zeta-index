return {
  name    = "eom",
  version = "1.28.1",
  summary = "Image viewer for MATE (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/eom/eom-1.28.1.pkg.tar.zst",
  sha256  = "39bb2aaf4bdb967a0b9052d017efb0d8033fde86b3721b0b77ee09d53fcf5e8f",
  deps    = { "dbus-glib", "gettext", "exempi", "lcms2", "libexif", "libjpeg-turbo", "mate-desktop", "libpeas" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/ 2>/dev/null || ls " .. p.install_root .. "/usr/share/ 2>/dev/null")
  end,
}
