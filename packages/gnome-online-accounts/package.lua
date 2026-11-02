return {
  name    = "gnome-online-accounts",
  version = "3.58.1",
  summary = "GNOME online accounts framework (libgoa)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/gnome-online-accounts/gnome-online-accounts-3.58.1.tar.gz",
  sha256  = "18ea545f558faa7cf78c7569755c364977489be1efbed8e9494ad7ce544e3f50",
  deps    = { "glibc", "glib", "gtk4", "gcr-4", "libjson-glib", "libsecret", "webkit2gtk-4.1", "gobject-introspection", "libadwaita", "keyutils", "librest" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/libgoa-1.0.so* | grep -q . && test -f " .. p.install_root .. "/usr/share/gir-1.0/Goa-1.0.gir && grep -q org.gnome.OnlineAccounts " .. p.install_root .. "/usr/share/dbus-1/services/org.gnome.OnlineAccounts.service")
  end,
}
