return {
  name    = "qqc2-desktop-style",
  version = "6.13.0",
  summary = "KDE: Qt Quick Controls 2: Desktop Style",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/qqc2-desktop-style/qqc2-desktop-style-6.13.0.tar.gz",
  sha256  = "fc500d5ba00ed01b36a5d34cb07fce9df7d0f5d7c56847504f6af4dfe0822805",
  deps    = { "glibc", "qtbase", "gcc", "qtdeclarative", "kcolorscheme", "kiconthemes", "kirigami", "sonnet" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}
