return {
  name    = "ncurses",
  version = "6.6",
  summary = "System V Release 4.0 curses library and utilities",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/ncurses/ncurses-6.6.tar.gz",
  sha256  = "5f18ad66469194373b9a9572f53b88c6d34ced590150d8a6920af2471c87a210",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libncursesw.so.6.6 && test -x " .. p.install_root .. "/usr/bin/clear")
  end,
}
