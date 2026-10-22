return {
  name    = "kauth",
  version = "6.13.0",
  summary = "KDE: KAuth",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/kauth/kauth-6.13.0.tar.gz",
  sha256  = "94d8e10f9221fa35c7fb82d8c81c728f5633342ec2594ea04a8afbc83ceba71d",
  deps    = { "glibc", "qtbase", "gcc", "kcoreaddons", "kwindowsystem", "polkit-qt-1" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}
