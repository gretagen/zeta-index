return {
  name    = "gnome-maps",
  version = "51.2-1-x86_64",
  summary = "find places around the world",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/gnome-maps/gnome-maps-51.2-1-x86_64.pkg.tar.zst",
  sha256  = "e14d4c244b550f5bc8cff8457def1078a49028173548f1aa7a0a8a1fe4a8f955",
  deps    = { "cairo", "libdconf", "geoclue", "geocode-glib", "gjs", "glib", "glibc", "gtk4", "hicolor-icon-theme", "libjson-glib", "libadwaita", "libgcc", "libgweather-4", "libportal", "librest", "librsvg", "libxml2", "pango", "sqlite" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/gnome-maps/libgnome-maps.so.0.0.0")
  end,
}
