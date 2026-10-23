return {
  name    = "kglobalacceld",
  version = "6.3.6",
  summary = "KDE: Daemon providing Global Keyboard Shortcut (Accelerator) functionality",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/kglobalacceld/kglobalacceld-6.3.6.tar.gz",
  sha256  = "cbbf29386806d7f025f2c5eebb722daa6c5e4cec88adf4c313abec61e2d2dbe8",
  deps    = { "glibc", "qtbase", "gcc", "kconfig", "kcoreaddons", "kglobalaccel", "kio", "kjobwidgets", "kservice" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}
