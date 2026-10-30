return {
  name    = "xdg-desktop-portal-gtk",
  version = "1.15.3-2-x86_64",
  summary = "a backend implementation for xdg-desktop-portal using GTK",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/xdg-desktop-portal-gtk/xdg-desktop-portal-gtk-1.15.3-2-x86_64.pkg.tar.zst",
  sha256  = "9d42f58def4b36629f18268627f23eaf561facd2dbc114379c782d6a9f96ab49",
  deps    = { "fontconfig", "gdk-pixbuf", "glib", "glibc", "gsettings-desktop-schemas", "gtk3", "libgcc", "xdg-desktop-portal" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/systemd/user/xdg-desktop-portal-gtk.service")
  end,
}
