return {
  name    = "lib32-pcre2",
  version = "10.48",
  summary = "A library that implements Perl 5-style regular expressions. 2nd version (32-bit)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/lib32-pcre2/lib32-pcre2.pkg.tar.zst",
  sha256  = "9b5516f7ff60a7bb9522406766b55efcdaf9ac971aca2a93213f6d7db6bc8bb0",
  deps    = { "lib32-glibc", "pcre2", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib32")
  end,
}
