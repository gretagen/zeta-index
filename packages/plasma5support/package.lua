return {
  name    = "plasma5support",
  version = "6.3.6",
  summary = "Plasma 5 compatibility support library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/plasma5support/plasma5support-6.3.6.tar.gz",
  sha256  = "7509eec1de908f6030af8ac26c15dfc2035f53c7fea52e56d37acf076985d041",
  deps    = { "glibc", "qtbase", "gcc", "qtdeclarative", "kconfig", "kcoreaddons", "kguiaddons", "kholidays", "ki18n", "kidletime", "kio", "knotifications", "unitconversion", "solid", "libksysguard", "plasma-activities" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -name 'Plasma5SupportConfig.cmake' | grep -q .")
  end,
}
