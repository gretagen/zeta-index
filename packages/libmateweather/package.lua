return {
  name    = "libmateweather",
  version = "1.28.2",
  summary = "Weather library for MATE (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libmateweather/libmateweather-1.28.2.pkg.tar.zst",
  sha256  = "0ed34e0bcb3129b67bd574bec02bbae9b28bf81544187b23cf63813bbeeaa4c1",
  deps    = { "gdk-pixbuf", "glib", "gtk3", "hicolor-icon-theme", "libsoup3", "libxml2" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/ 2>/dev/null || ls " .. p.install_root .. "/usr/share/ 2>/dev/null")
  end,
}
