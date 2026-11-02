return {
  name    = "evolution-data-server",
  version = "3.62.1",
  summary = "Contacts/calendar/tasks backend for GNOME (libedataserver)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/evolution-data-server/evolution-data-server-3.62.1.tar.gz",
  sha256  = "a83ad85be452b6d7448a94becbd6f298ab683d3d08a34d4a7480ed72bbd5a290",
  deps    = { "glibc", "glib", "gtk3", "gtk4", "libical", "libsecret", "nss", "sqlite", "icu", "libjson-glib", "curl", "libsoup3", "gobject-introspection", "pcre2", "libcanberra", "libgweather-4", "webkit2gtk-4.1" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/libedataserver-1.2.so* | grep -q . && test -f " .. p.install_root .. "/usr/share/gir-1.0/EDataServer-1.2.gir && ls " .. p.install_root .. "/usr/share/dbus-1/services/org.gnome.evolution.dataserver*.service | grep -q . && ! ls " .. p.install_root .. "/usr/lib/systemd 2>/dev/null | grep -q .")
  end,
}
