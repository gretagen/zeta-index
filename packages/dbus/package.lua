return {
  name    = "dbus",
  version = "1.16.2-3",
  summary = "D-Bus message bus (system + session)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/dbus/dbus-1.16.2-3.tar.gz",
  sha256  = "7aa2f8f0c268b4c3e163b90f721ef4eeb2237c2b4ee6e439c3bc70ce1ac3b583",
  deps    = { "glibc", "libX11", "audit", "libcap-ng", "expat", "systemd-libs" },
  archive = { strip = 1 },
  test = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/dbus-daemon && test \"$(stat -c %a " .. p.install_root .. "/usr/libexec/dbus-daemon-launch-helper)\" = 4750 && test -x " .. p.install_root .. "/usr/bin/dbus-send")
  end,
}
