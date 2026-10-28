return {
  name    = "dbus-glib",
  version = "0.112-2",
  summary = "GLib integration for the freedesktop D-Bus message bus",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/dbus-glib/dbus-glib-0.112-2.tar.gz",
  sha256  = "3fa550fd5d46e20e7889d8f1cee1af7dbf8d38e894e8de1888e2c98b90ac9973",
  deps    = { "glibc", "glib", "dbus" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/pkgconfig/dbus-glib-1.pc && test -f " .. p.install_root .. "/usr/include/dbus-1.0/dbus/dbus-glib.h && test -e " .. p.install_root .. "/usr/lib/libdbus-glib-1.so && PKG_CONFIG_PATH=" .. p.install_root .. "/usr/lib/pkgconfig pkg-config --exists dbus-glib-1")
  end,
}
