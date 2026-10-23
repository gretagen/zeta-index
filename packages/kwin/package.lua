return {
  name    = "kwin",
  version = "6.3.6",
  summary = "KDE Wayland compositor (kwin_wayland) and its KWin libs",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/kwin/kwin-6.3.6.tar.gz",
  sha256  = "122f12360d0bc3f51f335b74ddf3c060c683713c4fbf21c5f60f1f7d9141f363",
  deps    = { "glibc", "qtbase", "gcc", "qtdeclarative", "qtwayland", "qtsvg", "qt5compat", "qtsensors", "qttools", "wayland", "wayland-protocols", "plasma-wayland-protocols", "kdecoration", "kauth", "kcolorscheme", "kconfig", "kconfigwidgets", "kcoreaddons", "kcrash", "kdbusaddons", "kglobalaccel", "kglobalacceld", "kguiaddons", "ki18n", "kidletime", "kpackage", "kservice", "ksvg", "kwidgetsaddons", "kwindowsystem", "kdeclarative", "kcmutils", "knewstuff", "kxmlgui", "kscreenlocker", "krunner", "kwayland", "plasma-activities", "libplasma", "kirigami", "breeze", "libqaccessibilityclient", "kpipewire", "libcanberra", "libepoxy", "egl", "libei", "libxcvt", "libdrm", "libinput", "mesa-drivers", "freetype", "fontconfig", "lcms2" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/kwin_wayland && find " .. p.install_root .. "/usr -name 'KWinDBusInterfaceConfig.cmake' | grep -q .")
  end,
}
