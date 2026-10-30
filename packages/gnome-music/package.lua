return {
  name    = "gnome-music",
  version = "50.0-1-any",
  summary = "music player and management application",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/gnome-music/gnome-music-50.0-1-any.pkg.tar.zst",
  sha256  = "4633c158770bae686784fbe0f369dc98129d42c43a20f9da2e5a64a1abf856bc",
  deps    = { "libdconf", "gdk-pixbuf", "glib", "graphene", "grilo", "grilo-plugins", "gst-plugins-base", "gst-plugins-base-libs", "gst-plugins-good", "gstreamer", "gtk4", "hicolor-icon-theme", "libadwaita", "libmediaart", "libsoup3", "localsearch", "python", "python-cairo", "python-gobject", "tinysparql" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/gnome-music")
  end,
}
