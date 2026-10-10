return {
  name    = "dbus",
  version = "1.16.2-2",
  summary = "D-Bus message bus system",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/dbus/dbus-1.16.2-2.tar.xz",
  sha256  = "5ba1f57e9c1c0d743b061a5ce375af50bb76e2ebca964ef5ae93341d1e05c291",
  deps    = { "glibc", "audit" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/dbus-daemon && test -e " .. p.install_root .. "/usr/lib/libdbus-1.so")
  end,
}
