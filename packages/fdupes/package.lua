return {
  name    = "fdupes",
  version = "2.4.0-2-x86_64",
  summary = "Find duplicate files (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/fdupes/fdupes-2.4.0-2-x86_64.pkg.tar.zst",
  sha256  = "206aae01cb5878f776a9a5021877c0316ba3990ed56beabbdab5fa8a26c9c045",
  deps    = { "glibc", "sqlite", "pcre2", "ncurses" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/fdupes")
  end,
}
