return {
  name    = "decibels",
  version = "49.6.1-1-any",
  summary = "audio player for GNOME",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/decibels/decibels-49.6.1-1-any.pkg.tar.zst",
  sha256  = "6bf7cd628164820c84a81cf367c6ab254370afd1c623326fbe9f4076d8cc8cf8",
  deps    = { "libdconf", "gjs", "glib", "graphene", "gst-plugins-bad-libs", "gst-plugins-base", "gst-plugins-base-libs", "gst-plugins-good", "gstreamer", "gtk4", "hicolor-icon-theme", "libadwaita" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/org.gnome.Decibels")
  end,
}
