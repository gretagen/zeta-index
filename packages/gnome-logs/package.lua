return {
  name    = "gnome-logs",
  version = "50.0-1-x86_64",
  summary = "a log viewer for the systemd journal",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/gnome-logs/gnome-logs-50.0-1-x86_64.pkg.tar.zst",
  sha256  = "e512d748bf966e6dd0ac74aede6df96f13982187bc5a633c75066631a08dcbe7",
  deps    = { "libdconf", "glib", "glibc", "gsettings-desktop-schemas", "gtk4", "hicolor-icon-theme", "libadwaita", "libgcc", "pango", "systemd", "systemd-libs" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/gnome-logs")
  end,
}
