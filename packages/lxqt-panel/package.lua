return {
  name    = "lxqt-panel",
  version = "2.1.0",
  summary = "LXQt component (lxqt-panel)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/lxqt-panel/lxqt-panel-2.1.0.tar.gz",
  sha256  = "07e16c48bb7832e51e15ac8e7ebaeb5e35e9d9d454406ee6add0bf6605ac64b0",
  deps    = { "glibc", "kwindowsystem", "layer-shell-qt", "libXtst", "libdbusmenu-lxqt", "liblxqt", "libqtxdg", "lxqt-globalkeys", "qtbase", "qtsvg", "qtwayland", "solid", "wayland", "xcb-util", "xcb-util-image", "xkbcommon" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/lxqt-panel")
  end,
}
