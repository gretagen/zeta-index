return {
  name    = "gnome-software",
  version = "51.1-1-x86_64",
  summary = "allows you to find and install new apps",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/gnome-software/gnome-software-51.1-1-x86_64.pkg.tar.zst",
  sha256  = "7ff7fdf4d487bd13d56fa8ed0643db1beca3c72ae7ece95606512eb6b4c2e663",
  deps    = { "appstream", "libdconf", "gdk-pixbuf", "glib", "glibc", "gsettings-desktop-schemas", "gtk4", "hicolor-icon-theme", "libjson-glib", "libadwaita", "libgcc", "libgudev", "libmalcontent", "libsoup3", "libsysprof-capture", "libxmlb", "pango", "polkit", "systemd" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/gnome-software")
  end,
}
