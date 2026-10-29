return {
  name    = "libdconf",
  version = "0.40.0-2",
  summary = "GSettings configuration backend (with DBus service)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libdconf/libdconf-0.40.0-2.tar.gz",
  sha256  = "ffa5be439c0266688772113298b48925f49d8acb46cc9e8ed7373d2c8f957485",
  deps    = { "glibc", "glib" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/share/dbus-1/services/ca.desrt.dconf.service && test -x " .. p.install_root .. "/usr/libexec/dconf-service && test -f " .. p.install_root .. "/usr/lib/libdconf.so.1")
  end,
}
