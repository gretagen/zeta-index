return {
  name    = "dbus",
  version = "1.16.2-3",
  summary = "D-Bus message bus (system + session)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/dbus/dbus-1.16.2-3.tar.gz",
  sha256  = "31b547cab3c502eb18b4299d07a5a1d8ab6e25ee439ce8864f73359ccdc46335",
  deps    = { "glibc", "libX11", "audit", "libcap-ng", "expat", "systemd-libs" },
  archive = { strip = 1 },
  test = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/dbus-daemon && test \"$(stat -c %a " .. p.install_root .. "/usr/libexec/dbus-daemon-launch-helper)\" = 4750 && test -x " .. p.install_root .. "/usr/bin/dbus-send")
  end,
  install = function(p)
    p:run("chown root:messagebus " .. p.install_root .. "/usr/libexec/dbus-daemon-launch-helper && chmod 4750 " .. p.install_root .. "/usr/libexec/dbus-daemon-launch-helper")
  end,
}
