return {
  name    = "geoclue2",
  version = "2.8.2",
  summary = "D-Bus geolocation service (GNOME)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/geoclue2/geoclue2-2.8.2.tar.gz",
  sha256  = "8a68f60d38ff37b3345c821d7b7d2ded897e3fb430b56b7bec640cb6614e87b0",
  deps    = { "glibc", "glib", "libjson-glib", "curl", "avahi", "libnotify", "libsoup3" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/libexec/geoclue-2.0 && grep -q Exec=/usr/libexec/geoclue " .. p.install_root .. "/usr/share/dbus-1/system-services/org.freedesktop.GeoClue2.service")
  end,
}
