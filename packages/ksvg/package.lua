return {
  name    = "ksvg",
  version = "6.13.0",
  summary = "KDE: Components for handling SVGs",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/ksvg/ksvg-6.13.0.tar.gz",
  sha256  = "99f5574b002f0c2b4054d5590b72a1f62f727073f870de88485a54ec89931544",
  deps    = { "glibc", "qtbase", "gcc", "qtdeclarative", "qtsvg", "karchive", "kcolorscheme", "kconfig", "kcoreaddons", "kguiaddons", "kirigami" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}
