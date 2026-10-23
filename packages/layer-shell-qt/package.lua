return {
  name    = "layer-shell-qt",
  version = "6.3.6",
  summary = "KDE: Qt component to allow applications to make use of the Wayland wl-layer-shell protocol.",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/layer-shell-qt/layer-shell-qt-6.3.6.tar.gz",
  sha256  = "b43119afc85c44e10342307ea034d331c5e07177cd25e5751acc6041c5942496",
  deps    = { "glibc", "qtbase", "gcc", "qtwayland", "qtdeclarative", "wayland", "wayland-protocols" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}
