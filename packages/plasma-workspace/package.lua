return {
  name    = "plasma-workspace",
  version = "6.3.6",
  summary = "Plasma workspace: the Plasma 6 desktop shell (plasmashell)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/plasma-workspace/plasma-workspace-6.3.6.tar.gz",
  sha256  = "73ea4e983f5623d034dae51bb5d3f5f448fbd8a441f6d5fface5fb30421886d3",
  deps    = { "glibc", "qtbase", "gcc", "qtdeclarative", "qtshadertools", "qtsvg", "qtwayland", "attica", "baloo", "kauth", "kbookmarks", "kcmutils", "kcodecs", "kcolorscheme", "kcompletion", "kconfig", "kconfigwidgets", "kcoreaddons", "kcrash", "kdbusaddons", "kdeclarative", "kded", "kfilemetadata", "kglobalaccel", "kguiaddons", "kholidays", "ki18n", "kiconthemes", "kio", "kitemmodels", "kitemviews", "kjobwidgets", "knewstuff", "knotifications", "kpackage", "kparts", "kquickcharts", "krunner", "kservice", "kstatusnotifieritem", "ktexteditor", "ktextwidgets", "kuserfeedback", "kwallet", "kwidgetsaddons", "kwindowsystem", "kxmlgui", "prison", "qqc2-desktop-style", "solid", "sonnet", "libkexiv2", "kirigami-addons", "plasma-wayland-protocols", "polkit-qt-1", "kio-extras", "kactivitymanagerd", "kglobalacceld", "kscreenlocker", "kwayland", "layer-shell-qt", "libkscreen", "libksysguard", "libplasma", "milou", "plasma-activities", "plasma-activities-stats", "plasma-nano", "qcoro", "wayland", "wayland-protocols", "knotifyconfig", "unitconversion", "libqalculate", "plasma5support", "phonon", "icu", "qtpositioning", "kwin" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/plasmashell && find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}
