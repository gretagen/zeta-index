return {
  name    = "kguiaddons",
  version = "6.13.0",
  summary = "KDE: KGuiAddons",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/kguiaddons/kguiaddons-6.13.0.tar.gz",
  sha256  = "7dd61cf96506f815a37d686eceb87cd423a77f4e4efde5f1ded75309cb5a56a8",
  deps    = { "glibc", "qtbase", "gcc", "qtdeclarative", "qtwayland", "plasma-wayland-protocols", "wayland", "wayland-protocols" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}
