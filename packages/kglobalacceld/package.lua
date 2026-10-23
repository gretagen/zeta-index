return {
  name    = "kglobalacceld",
  version = "6.3.6",
  summary = "KDE: Daemon providing Global Keyboard Shortcut (Accelerator) functionality",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/kglobalacceld/kglobalacceld-6.3.6.tar.gz",
  sha256  = "33592a7a8033c1e72203fa92a16c6ebefd2686d0b4ee64cbd64a512e75503d14",
  deps    = { "glibc", "qtbase", "gcc", "kconfig", "kcoreaddons", "kglobalaccel", "kio", "kjobwidgets", "kservice" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}
