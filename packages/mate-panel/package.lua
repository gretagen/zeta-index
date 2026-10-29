return {
  name    = "mate-panel",
  version = "1.28.4",
  summary = "Panel for MATE",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/mate-panel/mate-panel-1.28.4.tar.gz",
  sha256  = "21494fbbb291c90855efa4f110a4d3292e99a61548be666a47f517669734ffaf",
  deps    = { "libsoup2", "startup-notification", "libdconf", "glibc", "glib", "gtk3", "dbus-glib", "libwnck3", "libcanberra", "libmateweather", "libSM", "mate-menus", "mate-desktop", "gettext", "gtk-layer-shell" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -n \"$(find " .. p.install_root .. "/usr -mindepth 1 -type f | head -1)\" && test -x " .. p.install_root .. "/usr/bin/mate-panel")
  end,
}
