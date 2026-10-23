return {
  name    = "kio-extras",
  version = "26.08.2",
  summary = "KDE: Additional components to increase the functionality of KIO",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/kio-extras/kio-extras-26.08.2.tar.gz",
  sha256  = "3a5b9119ddfab46f60cf355022452d6f8eed41f148a53f4c651f2e87159ace46",
  deps    = { "glibc", "qtbase", "gcc", "qtsvg", "karchive", "kcmutils", "kconfig", "kconfigwidgets", "kcoreaddons", "kdbusaddons", "kdnssd", "kdoctools", "kguiaddons", "ki18n", "kio", "solid", "syntax-highlighting", "libkexiv2", "kdsoap-ws-discovery-client", "plasma-activities", "plasma-activities-stats", "libproxy", "qcoro", "libtirpc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}
