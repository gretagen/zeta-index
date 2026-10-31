return {
  name    = "newsboat",
  version = "2.45-1-x86_64",
  summary = "RSS/Atom feed reader for the terminal (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/newsboat/newsboat-2.45-1-x86_64.pkg.tar.zst",
  sha256  = "bede6421694c13c0b98141d856fafc4dd91d8afebcb13c84b2b82f852fee0f2b",
  deps    = { "glibc", "libstdc++", "libgcc", "sqlite", "libcurl", "libxml2", "stfl", "json-c", "ncurses" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/newsboat")
  end,
}
