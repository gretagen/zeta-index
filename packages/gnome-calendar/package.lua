return {
  name    = "gnome-calendar",
  version = "51.0-1-x86_64",
  summary = "simple and beautiful calendar application designed to perfectly fit the GNOME desktop",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/gnome-calendar/gnome-calendar-51.0-1-x86_64.pkg.tar.zst",
  sha256  = "d1ad8398a8cf054ca386fcdf841c54134bec9d2ebd8c34ebda64772b4419f87d",
  deps    = { "libdconf", "evolution-data-server", "fribidi", "geoclue", "glib", "glibc", "graphene", "gsettings-desktop-schemas", "gtk4", "hicolor-icon-theme", "libadwaita", "libedataserverui4", "libgcc", "libgweather-4", "libical", "libsoup3", "pango" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/gnome-calendar")
  end,
}
