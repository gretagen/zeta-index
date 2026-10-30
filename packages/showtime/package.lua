return {
  name    = "showtime",
  version = "50.0-1-any",
  summary = "video player for GNOME",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/showtime/showtime-50.0-1-any.pkg.tar.zst",
  sha256  = "1476adcb79235cbabcd6753db31bd649983ffe0a4d946dfef2d144bee86d6ca8",
  deps    = { "libdconf", "glib", "graphene", "gst-plugins-bad-libs", "gst-plugins-base", "gst-plugins-base-libs", "gst-plugins-good", "gst-plugin-gtk4", "gstreamer", "gtk4", "hicolor-icon-theme", "libadwaita", "python", "python-gobject" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/showtime")
  end,
}
