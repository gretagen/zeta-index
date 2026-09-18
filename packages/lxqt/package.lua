return {
  name    = "lxqt",
  version = "2.1.0",
  summary = "LXQt desktop group (meta-package)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/lxqt/lxqt-2.1.0.tar.gz",
  sha256  = "dde2910288e19893f09114dbbab40e0072f8e756ae8bfd4c3ce6caa4b85005d9",
  deps    = { "liblxqt", "lxqt-session", "lxqt-panel", "lxqt-runner", "lxqt-notificationd", "pcmanfm-qt", "lxqt-about", "lxqt-globalkeys", "lxqt-config", "lxqt-policykit", "lxqt-powermanagement", "lxqt-qtplugin", "lxqt-menu-data", "md4c", "double-conversion", "libb2", "xkbcommon", "expat", "polkit", "openbox", "lxqt-themes" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -d " .. p.install_root)
  end,
}
