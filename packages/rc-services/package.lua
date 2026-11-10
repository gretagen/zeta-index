return {
  name    = "rc-services",
  version = "1.0.0",
  summary = "Haliade system OpenRC service scripts (init.d)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/rc-services/rc-services-1.0.0.tar.gz",
  sha256  = "c3f66caebbea2fd42cfeccd6d0fc611a58d6330b07db4b06d2d89f61c274a9e9",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    local r = p.install_root
    p:run("test -x " .. r .. "/etc/init.d/sshd && test -x " .. r .. "/etc/init.d/dbus && test -x " .. r .. "/etc/init.d/udev-trigger && test -x " .. r .. "/etc/init.d/connmand && test -x " .. r .. "/etc/init.d/elogind")
  end,
}
