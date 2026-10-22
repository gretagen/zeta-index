return {
  name    = "knotifications",
  version = "6.13.0",
  summary = "KDE: KNotifications",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/knotifications/knotifications-6.13.0.tar.gz",
  sha256  = "56d4d677b2cca6d9ff17e6fa39226619b2535deb4da0aa842e401f4c1106ff61",
  deps    = { "glibc", "qtbase", "gcc", "qtdeclarative", "kconfig", "libcanberra" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}
