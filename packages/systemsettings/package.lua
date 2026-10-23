return {
  name    = "systemsettings",
  version = "6.3.6",
  summary = "KDE System Settings control center (systemsettings KCM shell)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/systemsettings/systemsettings-6.3.6.tar.gz",
  sha256  = "be72a5bd7fe1121381b527c21e49c850220f26c4e3d89a1452395b53d4eb6bb3",
  deps    = { "glibc", "qtbase", "qtdeclarative", "extra-cmake-modules", "kauth", "kcrash", "kitemviews", "kitemmodels", "kcmutils", "ki18n", "kio", "kservice", "kiconthemes", "kwidgetsaddons", "kwindowsystem", "kxmlgui", "kdbusaddons", "kconfig", "kguiaddons", "kirigami", "kjobwidgets", "krunner", "knotifications", "kdoctools", "plasma-activities" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/systemsettings")
  end,
}
