return {
  name    = "ncurses",
  version = "6.6-2",
  summary = "System V Release 4.0 curses library and utilities",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/ncurses/ncurses-6.6-2.tar.gz",
  sha256  = "a7ecec09e5e23d8a2e80234e4fefe11713a355cad37d8a1fd0647a51e759c095",
  deps    = { "glibc", "gcc", "libgcc", "libstdc++" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libncursesw.so.6.6 && test -x " .. p.install_root .. "/usr/bin/clear")
    -- wide-char include layout expected by most consumers (weechat et al.)
    p:run("test -f " .. p.install_root .. "/usr/include/ncursesw/term.h && test -f " .. p.install_root .. "/usr/include/ncursesw/curses.h")
  end,
}
