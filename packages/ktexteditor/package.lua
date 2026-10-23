return {
  name    = "ktexteditor",
  version = "6.13.0",
  summary = "KDE: KTextEditor Framework",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/ktexteditor/ktexteditor-6.13.0.tar.gz",
  sha256  = "77de816d2c0a697ab8c55056509aa8dcf4600498e7e5572055d3e7b62b94b227",
  deps    = { "glibc", "qtbase", "gcc", "qtdeclarative", "breeze-icons", "karchive", "kauth", "kcolorscheme", "kconfig", "kguiaddons", "ki18n", "kio", "kjobwidgets", "kparts", "kxmlgui", "sonnet", "syntax-highlighting" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}
