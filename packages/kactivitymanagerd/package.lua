return {
  name    = "kactivitymanagerd",
  version = "6.3.6",
  summary = "KDE: System service to manage user's activities, track the usage patterns etc.",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/kactivitymanagerd/kactivitymanagerd-6.3.6.tar.gz",
  sha256  = "cf3d68fe8cedb2a332aac69183f1bdc2f5492b09d9caaf3c63700b121ca8d682",
  deps    = { "glibc", "qtbase", "gcc", "kauth", "kcodecs", "kconfig", "kconfigwidgets", "kcoreaddons", "kcrash", "kdbusaddons", "kglobalaccel", "ki18n", "kio", "kservice", "kwidgetsaddons", "kxmlgui" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}
