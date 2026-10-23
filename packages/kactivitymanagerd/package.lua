return {
  name    = "kactivitymanagerd",
  version = "6.3.6",
  summary = "KDE: System service to manage user's activities, track the usage patterns etc.",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/kactivitymanagerd/kactivitymanagerd-6.3.6.tar.gz",
  sha256  = "68db3c9965f55be2501d14250e9b4af39f15b24153b30d1b9d726e6dd4514608",
  deps    = { "glibc", "qtbase", "gcc", "kauth", "kcodecs", "kconfig", "kconfigwidgets", "kcoreaddons", "kcrash", "kdbusaddons", "kglobalaccel", "ki18n", "kio", "kservice", "kwidgetsaddons", "kxmlgui" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}
