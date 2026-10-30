return {
  name    = "gnome-clocks",
  version = "51.0-2-x86_64",
  summary = "clocks applications for GNOME",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/gnome-clocks/gnome-clocks-51.0-2-x86_64.pkg.tar.zst",
  sha256  = "b1e549a8515e56091c0bdb4a75fc239cf2fd2fb5020210215bcad405c225116f",
  deps    = { "libdconf", "geoclue", "geocode-glib", "glib", "glibc", "gnome-desktop-4", "gsettings-desktop-schemas", "gtk4", "hicolor-icon-theme", "icu", "libadwaita", "libgcc", "libgweather-4" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/gnome-clocks")
  end,
}
