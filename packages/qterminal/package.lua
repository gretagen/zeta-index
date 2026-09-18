return {
  name    = "qterminal",
  version = "2.1.0",
  summary = "LXQt terminal emulator (Qt6, QTermWidget)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/qterminal/qterminal-2.1.0.tar.gz",
  sha256  = "7678b843a8bc80df0d842f92c90ccf00fb0b0626c03982bb35132bcf2e94f4c7",
  deps    = { "glibc", "layer-shell-qt", "qtermwidget", "qtbase" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/qterminal")
  end,
}
