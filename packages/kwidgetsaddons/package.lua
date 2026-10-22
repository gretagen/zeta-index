return {
  name    = "kwidgetsaddons",
  version = "6.13.0",
  summary = "KDE: KWidgetsAddons",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/kwidgetsaddons/kwidgetsaddons-6.13.0.tar.gz",
  sha256  = "5c529b4107fbad473f5724a1377d2deac3103f7858c4133ef8fa5e9b695f0c0d",
  deps    = { "glibc", "qtbase", "gcc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}
