return {
  name    = "gnome-system-monitor",
  version = "51.1-1-x86_64",
  summary = "view current processes and monitor system state",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/gnome-system-monitor/gnome-system-monitor-51.1-1-x86_64.pkg.tar.zst",
  sha256  = "6837e45841f3f1415256c36c8bc27ad1006aea2c416e9bcc449171566ad0ea32",
  deps    = { "cairo", "libdconf", "gdk-pixbuf", "glib", "glibc", "glibmm-2.68", "graphene", "gtk4", "gtkmm-4.0", "hicolor-icon-theme", "libadwaita", "libgcc", "libgtop", "librsvg", "libsigc++-3.0", "libstdc++", "pango", "polkit", "systemd", "systemd-libs" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/gnome-system-monitor")
  end,
}
