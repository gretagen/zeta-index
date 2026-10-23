return {
  name    = "kscreenlocker",
  version = "6.3.6",
  summary = "KDE: Library and components for secure lock screen architecture",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/kscreenlocker/kscreenlocker-6.3.6.tar.gz",
  sha256  = "7e17de009f74cf619a76821d02c3cb7dd03e4b46466682171b7a1286e54868ca",
  deps    = { "glibc", "qtbase", "gcc", "qtdeclarative", "kauth", "kcmutils", "kcodecs", "kconfig", "kconfigwidgets", "kcoreaddons", "kcrash", "kdeclarative", "kglobalaccel", "ki18n", "kidletime", "knotifications", "kservice", "ksvg", "kwidgetsaddons", "kwindowsystem", "kxmlgui", "layer-shell-qt", "libkscreen", "libplasma" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}
