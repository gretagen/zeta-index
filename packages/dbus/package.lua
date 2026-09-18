return {
  name    = "dbus",
  version = "1.16.2",
  summary = "D-Bus message bus system",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/dbus/dbus-1.16.2.tar.xz",
  sha256  = "aef47e85d86c1d9d5417f2049387106a0850f2c59354a22a2abe2f3d134af330",
  deps    = { "glibc", "audit" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/dbus-daemon && test -e " .. p.install_root .. "/usr/lib/libdbus-1.so")
  end,
}
