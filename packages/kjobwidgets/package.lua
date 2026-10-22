return {
  name    = "kjobwidgets",
  version = "6.13.0",
  summary = "KDE: KJobWidgets",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/kjobwidgets/kjobwidgets-6.13.0.tar.gz",
  sha256  = "609b66150000917e5847b74eaf6f6e20cfed6335289d53051382b916ecc65b11",
  deps    = { "glibc", "qtbase", "gcc", "kcoreaddons", "knotifications", "kwidgetsaddons" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}
