return {
  name    = "epiphany",
  version = "51.2-1-x86_64",
  summary = "a GNOME web browser based on the WebKit rendering engine",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/epiphany/epiphany-51.2-1-x86_64.pkg.tar.zst",
  sha256  = "d8b987d7c86463c1ad2ad5d78655b28e5db68f2c8b8e939b0c8e78f4bee1dfeb",
  deps    = { "cairo", "libdconf", "gcr-4", "gdk-pixbuf", "glib", "glibc", "gmp", "gstreamer", "gtk4", "hicolor-icon-theme", "libjson-glib", "libadwaita", "libarchive", "libgcc", "libportal", "libportal-gtk4", "libpwquality", "libsecret", "libsoup3", "libxml2", "nettle", "pango", "sqlite", "webkitgtk-6.0" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/epiphany")
  end,
}
