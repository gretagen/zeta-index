return {
  name    = "waydroid",
  version = "1.6.3",
  summary = "Android container manager (LXC-based)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/waydroid/waydroid-1.6.3.tar.gz",
  sha256  = "513a160586cb60aace54a0cf965fabc2bbd0b576e163d4ade1fd6c7c0044c027",
  deps    = { "glibc", "python", "python-gobject", "gbinder-python", "dbus-python", "lxc", "dbus", "dnsmasq", "iptables", "iproute2", "polkit", "gtk3", "pipewire" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/waydroid && test -d " .. p.install_root .. "/usr/lib/waydroid/tools && " .. p.install_root .. "/usr/bin/waydroid --help | grep -q init && test -f " .. p.install_root .. "/usr/share/dbus-1/system-services/id.waydro.Container.service && test -f " .. p.install_root .. "/usr/share/polkit-1/actions/id.waydro.Container.policy && test ! -e " .. p.install_root .. "/usr/lib/systemd/system/waydroid-container.service")
  end,
}
