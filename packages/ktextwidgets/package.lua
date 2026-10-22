return {
  name    = "ktextwidgets",
  version = "6.13.0",
  summary = "KDE: KTextWidgets",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/ktextwidgets/ktextwidgets-6.13.0.tar.gz",
  sha256  = "2bc38099d10b1681e0a2ee86acbebb3ea44b6edda2dbc763f9acd632b3b6ab27",
  deps    = { "glibc", "qtbase", "gcc", "kcompletion", "kconfig", "ki18n", "kwidgetsaddons", "sonnet", "qtspeech", "kcolorscheme" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}
