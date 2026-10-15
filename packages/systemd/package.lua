return {
  name    = "systemd",
  version = "262-3",
  summary = "System and service manager (init) with full service activation machinery",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/systemd/systemd-262-3.tar.gz",
  sha256  = "b20e7d56fc54b1114c25d5917ce6c8f043e10c944fe7878fc19c07837fce555b",
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
    -- Boot chain: the entry point is a symlink — its target must be present
    -- AND non-empty, or the initramfs boots into "does not exist" (seen in
    -- the field after a half-finished install left the link dangling).
    p:run("test -s " .. r .. "/usr/lib/systemd/systemd"
      .. " && test -s " .. r .. "/usr/sbin/systemd")
    -- D-Bus policy files must carry real XML: an interrupted install once
    -- left all ten empty and dbus-daemon refused every policy in the dir.
    p:run("test -s " .. r .. "/usr/share/dbus-1/system.d/org.freedesktop.systemd1.conf"
      .. " && test -s " .. r .. "/usr/share/dbus-1/system.d/org.freedesktop.hostname1.conf"
      .. " && test -s " .. r .. "/usr/share/dbus-1/system.d/org.freedesktop.locale1.conf"
      .. " && test -s " .. r .. "/usr/share/dbus-1/system.d/org.freedesktop.machine1.conf"
      .. " && test -s " .. r .. "/usr/share/dbus-1/system.d/org.freedesktop.network1.conf"
      .. " && test -s " .. r .. "/usr/share/dbus-1/system.d/org.freedesktop.oom1.conf"
      .. " && test -s " .. r .. "/usr/share/dbus-1/system.d/org.freedesktop.portable1.conf"
      .. " && test -s " .. r .. "/usr/share/dbus-1/system.d/org.freedesktop.resolve1.conf"
      .. " && test -s " .. r .. "/usr/share/dbus-1/system.d/org.freedesktop.timedate1.conf"
      .. " && test -s " .. r .. "/usr/share/dbus-1/system.d/org.freedesktop.timesync1.conf")
  end,
}
