return {
  name    = "libgit2",
  version = "1.9.7",
  summary = "Library implementing Git core methods (used by cargo)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libgit2/libgit2-1.9.7.tar.gz",
  sha256  = "b9ec8de0464f8ba247035a086a331d57446297bd935677b76c30168297ac478a",
  deps    = { "glibc", "libssh2", "llhttp", "openssl", "pcre2", "libz" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libgit2.so.1.9")
  end,
}
