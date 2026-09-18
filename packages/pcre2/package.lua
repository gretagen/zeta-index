return {
  name    = "pcre2",
  version = "10.47",
  summary = "Perl-compatible regular expression library v2",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/pcre2/pcre2-10.47.tar.gz",
  sha256  = "0db41723ca26a684ae8cf4e9f3984009c58980da9fbd18f1f24470aca26306c7",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libpcre2-8.so.0")
  end,
}
