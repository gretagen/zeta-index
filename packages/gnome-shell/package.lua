return {
  name    = "gnome-shell",
  version = "51.1",
  summary = "GNOME Shell desktop (Wayland compositor UI)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/gnome-shell/gnome-shell-51.1.tar.gz",
  sha256  = "c7ba5d69502965755f560430bbf679db5e0929c8dc852d25e4e79a3c37ec2dcf",
  deps    = { "glibc", "glib", "gtk4", "mutter", "gjs", "gnome-desktop", "evolution-data-server", "gcr-4", "ibus", "polkit", "startup-notification", "libnma", "networkmanager", "libgweather-4", "gsettings-desktop-schemas", "adwaita-icon-theme", "libdconf", "gobject-introspection", "cairo", "gdk-pixbuf", "librsvg", "pipewire", "xdg-desktop-portal", "libgudev", "gnome-autoar", "gnome-bluetooth", "gdm", "accountsservice", "geoclue2", "upower" },
  archive = { strip = 1 },
  test = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/gnome-shell && test -d " .. p.install_root .. "/usr/lib/gnome-shell && test -f " .. p.install_root .. "/usr/share/glib-2.0/schemas/org.gnome.shell.gschema.xml && LD_LIBRARY_PATH=" .. p.install_root .. "/usr/lib:" .. p.install_root .. "/usr/lib/gnome-shell:" .. p.install_root .. "/usr/lib/mutter-51 " .. p.install_root .. "/usr/bin/gnome-shell --version | grep -q 51")
  end,
}
