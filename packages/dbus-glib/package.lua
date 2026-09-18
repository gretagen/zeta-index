return {
  name    = "dbus-glib",
  version = "0.112",
  summary = "GLib integration for the freedesktop D-Bus message bus",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/dbus-glib/dbus-glib-0.112.tar.gz",
  sha256  = "f36ba681b53de7231cbf183454bc7f510cfb8b0e0c24a49717299875c1439d0d",
  deps    = { "glibc", "glib" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libdbus-glib-1.so.2")
  end,
}
