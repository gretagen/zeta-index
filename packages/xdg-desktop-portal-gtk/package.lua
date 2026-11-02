return {
  name    = "xdg-desktop-portal-gtk",
  version = "1.15.3",
  summary = "GTK backend for xdg-desktop-portal (file chooser, settings)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/xdg-desktop-portal-gtk/xdg-desktop-portal-gtk-1.15.3.tar.gz",
  sha256  = "573802db41b7a4e1a795c94dd2034c1b6816a27e883653cf2895e0cec21cd9b8",
  deps    = { "glibc", "glib", "gtk3", "xdg-desktop-portal", "gnome-desktop" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/libexec/xdg-desktop-portal-gtk && test -f " .. p.install_root .. "/usr/share/xdg-desktop-portal/portals/gtk.portal && test -f " .. p.install_root .. "/usr/share/dbus-1/services/org.freedesktop.impl.portal.desktop.gtk.service && ! ls " .. p.install_root .. "/usr/lib/systemd 2>/dev/null | grep -q .")
  end,
}
