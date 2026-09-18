return {
  name    = "mate-panel",
  version = "1.28.7",
  summary = "Panel for MATE (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/mate-panel/mate-panel-1.28.7.pkg.tar.zst",
  sha256  = "4d89e5329b9e88240ca1d06f357bdff4be383bc69076480d8b8002b29e8cdb07",
  deps    = { "dbus-glib", "libwnck3", "libcanberra", "libmateweather", "libSM", "mate-menus", "mate-desktop", "gettext", "gtk-layer-shell" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/ 2>/dev/null || ls " .. p.install_root .. "/usr/share/ 2>/dev/null")
  end,
}
