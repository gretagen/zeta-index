return {
  name    = "xdg-desktop-portal-gnome",
  version = "51.0-1-x86_64",
  summary = "backend implementation for xdg-desktop-portal for the GNOME desktop environment",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/xdg-desktop-portal-gnome/xdg-desktop-portal-gnome-51.0-1-x86_64.pkg.tar.zst",
  sha256  = "127bfa665c00c9f6cc52cb668bf48f43a7bf7d042f2983d5b2f7eb286bb58787",
  deps    = { "cairo", "libdconf", "fontconfig", "gdk-pixbuf", "glib", "glibc", "gnome-desktop-4", "graphene", "gtk4", "libadwaita", "libgcc", "libX11", "nautilus", "wayland", "xdg-desktop-portal", "xdg-desktop-portal-gtk" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/systemd/user/xdg-desktop-portal-gnome.service")
  end,
}
