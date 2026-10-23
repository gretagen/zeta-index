return {
  name    = "krunner",
  version = "6.13.0",
  summary = "KDE: Framework for providing different actions given a string query.",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/krunner/krunner-6.13.0.tar.gz",
  sha256  = "70102a16e58ba4fef1977ec813e71992d04d0154762459cec2daf5b86a689158",
  deps    = { "glibc", "qtbase", "gcc", "kconfig", "kcoreaddons", "ki18n", "kitemmodels", "kwindowsystem", "threadweaver" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}
