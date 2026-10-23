return {
  name    = "knotifyconfig",
  version = "6.13.0",
  summary = "KDE Framework 6: notification configuration settings",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/knotifyconfig/knotifyconfig-6.13.0.tar.gz",
  sha256  = "dd3af0a9d6787a665f560ae856226563aa948b89d60d453db151fb0878da9ecc",
  deps    = { "glibc", "qtbase", "gcc", "ki18n", "kio", "knotifications", "kxmlgui", "kcompletion", "kcoreaddons", "kjobwidgets", "kservice", "solid", "kwidgetsaddons", "kwindowsystem" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -name 'KF6NotifyConfigConfig.cmake' | grep -q .")
  end,
}
