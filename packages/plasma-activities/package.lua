return {
  name    = "plasma-activities",
  version = "6.3.6",
  summary = "KDE: Core components for the KDE's Activities System",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/plasma-activities/plasma-activities-6.3.6.tar.gz",
  sha256  = "0fff21d22e324c8353592415c1f5b5115c80ea5f69ef6f863c84468f86b65405",
  deps    = { "glibc", "qtbase", "gcc", "kconfig", "kcoreaddons", "kwindowsystem", "boost" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}
