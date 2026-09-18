return {
  name    = "layer-shell-qt",
  version = "6.4.0",
  summary = "Qt Wayland layer-shell interface library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/layer-shell-qt/layer-shell-qt-6.4.0.tar.gz",
  sha256  = "80aea307ddf0e9e7ea2071dd59df3804f8f03250b5715859ac2aaa40261fcd52",
  deps    = { "glibc", "qtbase", "qtdeclarative", "qtwayland", "wayland", "xkbcommon" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libLayerShellQtInterface.so.6")
  end,
}
