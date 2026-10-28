return {
  name    = "libmateweather",
  version = "1.28.0",
  summary = "Weather library for MATE (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libmateweather/libmateweather-1.28.0.tar.gz",
  sha256  = "641e56fc4f60562fcf7a716a7a8662c389a287c1dedf177ca7f9a8148fb143e6",
  deps    = { "libsoup2", "gdk-pixbuf", "glib", "gtk3", "hicolor-icon-theme", "libsoup3", "libxml2" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -n \"$(find " .. p.install_root .. "/usr -mindepth 1 -type f | head -1)\" && test -f " .. p.install_root .. "/usr/lib/pkgconfig/mateweather.pc")
  end,
}
