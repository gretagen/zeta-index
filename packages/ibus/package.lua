return {
  name    = "ibus",
  version = "1.5.34-2-x86_64",
  summary = "Intelligent input bus for Linux (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/ibus/ibus-1.5.34-2-x86_64.pkg.tar.zst",
  sha256  = "64c688e0615430b8367080571990d95cf53b5cd8debe0cbfd82a6907854e61e6",
  deps    = { "at-spi2-core", "cairo", "libdconf", "gdk-pixbuf", "glib", "graphene", "gtk3", "gtk4", "hicolor-icon-theme", "libdbusmenu-glib", "libdbusmenu-gtk3", "libnotify", "libX11", "libXfixes", "libXi", "xkbcommon", "pango", "python", "python-gobject", "wayland", "libibus" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/ibus-daemon")
  end,
}
