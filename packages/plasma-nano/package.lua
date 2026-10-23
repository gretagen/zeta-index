return {
  name    = "plasma-nano",
  version = "6.3.6",
  summary = "KDE: A minimal Plasma shell package",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/plasma-nano/plasma-nano-6.3.6.tar.gz",
  sha256  = "c136db2aa66d6da04ba872f9a1f9fb2466e3fa60b998c643cade94b2617d8223",
  deps    = { "glibc", "qtbase", "gcc", "qtdeclarative", "qtsvg", "kconfig", "kcoreaddons", "ki18n", "kitemmodels", "kservice", "ksvg", "kwindowsystem", "kwayland", "libplasma" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}
