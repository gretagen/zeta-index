return {
  name    = "dbus",
  version = "1.16.2-3",
  summary = "D-Bus message bus (system + session)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/dbus/dbus-1.16.2-3.tar.gz",
  sha256  = "a6257d6c59978babb34b7a522e05650bfe0f747b3ca247decbe7e740434caba1",
  deps    = { "glibc", "libX11", "audit", "libcap-ng", "expat", "systemd-libs" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/dbus-daemon && test \"$(stat -c %a " .. p.install_root .. "/usr/libexec/dbus-daemon-launch-helper)\" = 4750 && test -x " .. p.install_root .. "/usr/bin/dbus-send")
  end,
}
