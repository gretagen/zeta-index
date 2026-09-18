return {
  name    = "terminfo",
  version = "1.0",
  summary = "Terminfo database (compiled from ncurses 6.6)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/terminfo/terminfo-1.0.tar.gz",
  sha256  = "7d2a57887920f5a8e81d1213ec9257643cd6641727798ab2fbffab54a0158a54",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/share/terminfo/x/xterm && test -f " .. p.install_root .. "/usr/share/terminfo/l/linux")
  end,
}
