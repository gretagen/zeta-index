return {
  name    = "unitconversion",
  version = "6.13.0",
  summary = "KDE Framework 6: measurement unit conversion (kunitconversion)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/unitconversion/unitconversion-6.13.0.tar.gz",
  sha256  = "aa26651d405a675248d28be57da3b198fbe3458463f93a58a1d019d543e1a181",
  deps    = { "glibc", "qtbase", "gcc", "ki18n" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -name 'KF6UnitConversionConfig.cmake' | grep -q .")
  end,
}
