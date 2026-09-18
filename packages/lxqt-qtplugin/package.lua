return {
  name    = "lxqt-qtplugin",
  version = "2.1.0",
  summary = "LXQt component (lxqt-qtplugin)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/lxqt-qtplugin/lxqt-qtplugin-2.1.0.tar.gz",
  sha256  = "314b585a78eb06245a5d7124db7b42cba459fc433224735ea1bd03f1ad204742",
  deps    = { "glibc", "libdbusmenu-lxqt", "libqtxdg", "qtbase", "qtsvg" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/plugins/platformthemes/libqtlxqt.so")
  end,
}
