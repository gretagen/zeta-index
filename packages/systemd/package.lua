return {
  name    = "systemd",
  version = "262-2",
  summary = "System and service manager (init) with full service activation machinery",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/systemd/systemd-262-2.tar.gz",
  sha256  = "7f13d21455713a595dfba803367a291647ed102dbba1dfe9932d78815dff3822",
  deps    = { "glibc", "systemd-libs" },
  archive = { strip = 1 },
  test    = function(p)
    local r = p.install_root
    p:run("test -x " .. r .. "/usr/bin/systemctl"
      .. " && LD_LIBRARY_PATH=" .. r .. "/usr/lib/systemd " .. r .. "/usr/bin/systemctl --version >/dev/null"
      .. " && test -x " .. r .. "/usr/lib/systemd/systemd"
      .. " && test -x " .. r .. "/usr/lib/systemd/udevadm"
      .. " && test -x " .. r .. "/usr/sbin/systemd"
      .. " && ! test -e " .. r .. "/usr/bin/udevadm"
      .. " && test -e " .. r .. "/usr/lib/systemd/system/dbus.service"
      .. " && ! test -e " .. r .. "/usr/bin/loginctl"
      .. " && ! test -e " .. r .. "/usr/sbin/init"
      .. " && ! test -e " .. r .. "/usr/sbin/reboot"
      .. " && ! test -e " .. r .. "/etc/ssh/sshd_config.d/20-systemd-userdb.conf"
      .. " && ! test -e " .. r .. "/usr/lib/libsystemd.so.0")
  end,
}
