return {
  name    = "bemenu-ncurses",
  version = "0.6.23-1-x86_64",
  summary = "ncurses renderer for bemenu",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/bemenu-ncurses/bemenu-ncurses-0.6.23-1-x86_64.pkg.tar.zst",
  sha256  = "cfd2a4682ca286090468e5ebeb30859e448af34e37a4e31bd37091b93d245946",
  deps    = { "glibc", "bemenu", "ncurses" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/bemenu/bemenu-renderer-curses.so")
  end,
}
