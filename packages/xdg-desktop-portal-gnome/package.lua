return {
  name    = "xdg-desktop-portal-gnome",
  version = "51.0",
  summary = "GNOME backend for xdg-desktop-portal (screencast, shell integration)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/xdg-desktop-portal-gnome/xdg-desktop-portal-gnome-51.0.tar.gz",
  sha256  = "8daa90f84f08931181848f296643d4b39ba9b1cba1704813254ebade28563890",
  deps    = { "glibc", "glib", "gtk4", "libadwaita", "gnome-desktop", "xdg-desktop-portal", "gsettings-desktop-schemas" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/libexec/xdg-desktop-portal-gnome && test -f " .. p.install_root .. "/usr/share/xdg-desktop-portal/portals/gnome.portal && test -f " .. p.install_root .. "/usr/share/glib-2.0/schemas/xdg-desktop-portal-gnome.gschema.xml && ! find " .. p.install_root .. " -name '*.service' -path '*systemd*' | grep -q .")
  end,
}
