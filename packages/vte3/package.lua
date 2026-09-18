return {
  name    = "vte3",
  version = "0.84.1",
  summary = "Terminal emulator widget for GTK3 (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/vte3/vte3-0.84.1-1-x86_64.pkg.tar.zst",
  sha256  = "9c86d48de0ec384709dc897aeb710717b2d53c6ad3d6eb3ad75ea729e63ce0de",
  deps    = { "cairo", "glib", "gnutls", "icu", "pango", "pcre2", "systemd-libs", "at-spi2-core", "gtk3" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/libvte-2.91*.so*")
  end,
}
