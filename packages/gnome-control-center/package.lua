return {
  name    = "gnome-control-center",
  version = "51.1-1-x86_64",
  summary = "gNOME's main interface to configure various aspects of the desktop",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/gnome-control-center/gnome-control-center-51.1-1-x86_64.pkg.tar.zst",
  sha256  = "c5b919a0c02d601617e970c9095ef5f7239bb49d7fe8a9448d1521a1ea005f61",
  deps    = { "accountsservice", "bolt", "cairo", "colord-gtk4", "cups-pk-helper", "libdconf", "fontconfig", "gcr-4", "gdk-pixbuf", "glib", "glibc", "gnome-bluetooth-3.0", "gnome-color-manager", "gnome-desktop-4", "gnome-online-accounts", "gnome-settings-daemon", "gnome-shell", "gnutls", "graphene", "gsettings-desktop-schemas", "gsound", "gst-plugins-good", "gtk4", "hicolor-icon-theme", "libjson-glib", "krb5", "libadwaita", "libcolord", "libcups", "libepoxy", "libgcc", "libgoa", "libgtop", "libgudev", "libibus", "libmalcontent", "libmm-glib", "libnm", "libnma-gtk4", "libpulse", "libpwquality", "libsecret", "libsoup3", "libwacom", "libX11", "libXi", "libxml2", "pango", "polkit", "smbclient", "sound-theme-freedesktop", "tecla", "udisks2", "upower", "wayland", "gnome-keybindings" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/gnome-control-center")
  end,
}
