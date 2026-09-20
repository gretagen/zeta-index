return {
  name    = "lib32-ncurses",
  version = "6.6",
  summary = "System V Release 4.0 curses emulation library (32-bit)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/lib32-ncurses/lib32-ncurses.pkg.tar.zst",
  sha256  = "fb0d062ed50c6607f2c90fbff4a432251ce00b1ceb5621e5277d1ada6d1828b7",
  deps    = { "lib32-gcc-libs", "lib32-glibc", "ncurses", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib32")
  end,
}
