return {
  name    = "plasma-desktop",
  version = "6.3.6",
  summary = "Plasma desktop containments, applets and KCMs",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/plasma-desktop/plasma-desktop-6.3.6.tar.gz",
  sha256  = "40e5a9dd6e283eb261d94caa515816e04ebe7c33f323ff56cb6acb1b8aa3e0fa",
  deps    = { "glibc", "qtbase", "gcc", "qtdeclarative", "qtsvg", "qtwayland", "attica", "baloo", "breeze", "kactivitymanagerd", "kcmutils", "kcodecs", "kcompletion", "kconfig", "kconfigwidgets", "kcoreaddons", "kcrash", "kdbusaddons", "kded", "kfilemetadata", "kglobalaccel", "kguiaddons", "ki18n", "kiconthemes", "kio", "kio-extras", "kirigami-addons", "kitemmodels", "kitemviews", "kjobwidgets", "knewstuff", "knotifications", "knotifyconfig", "kpackage", "kparts", "krunner", "kservice", "ktextwidgets", "unitconversion", "kwidgetsaddons", "kwindowsystem", "kxmlgui", "libksysguard", "libplasma", "plasma-activities", "plasma-activities-stats", "plasma-workspace", "qqc2-desktop-style", "solid", "sonnet", "wayland", "wayland-protocols", "kwayland", "phonon", "libXkbfile" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}
