return {
  name    = "systemd",
  version = "262",
  summary = "System and service manager (init) with full service activation machinery",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/systemd/systemd-262.tar.gz",
  sha256  = "a34f8e66cd7927cd4ea79fd93d66b17ae35f655e04ae9f59225d43d2ad4be7c2",
  deps    = { "glibc", "systemd-libs" },
  archive = { strip = 1 },
  test    = function(p)
    local r = p.install_root
    p:run("test -x " .. r .. "/usr/bin/systemctl"
      .. " && LD_LIBRARY_PATH=" .. r .. "/usr/lib/systemd " .. r .. "/usr/bin/systemctl --version >/dev/null"
      .. " && test -x " .. r .. "/usr/lib/systemd/systemd"
      .. " && test -x " .. r .. "/usr/lib/systemd/udevadm"
      .. " && ! test -e " .. r .. "/usr/bin/udevadm"
      .. " && test -e " .. r .. "/usr/lib/systemd/system/dbus.service"
      .. " && ! test -e " .. r .. "/usr/bin/loginctl"
      .. " && ! test -e " .. r .. "/usr/sbin/init"
      .. " && ! test -e " .. r .. "/usr/sbin/reboot"
      .. " && ! test -e " .. r .. "/etc/ssh/sshd_config.d/20-systemd-userdb.conf"
      .. " && ! test -e " .. r .. "/usr/lib/libsystemd.so.0")
  end,
}
