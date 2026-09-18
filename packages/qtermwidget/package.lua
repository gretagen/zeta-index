return {
  name    = "qtermwidget",
  version = "2.1.0",
  summary = "QTermWidget terminal emulator widget library (Qt6)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/qtermwidget/qtermwidget-2.1.0.tar.gz",
  sha256  = "82852d4ed03af6639badb4fe4ce0ec4f222da07b147ad8281957b462ed852d83",
  deps    = { "glibc", "qtbase" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libqtermwidget6.so.2")
  end,
}
