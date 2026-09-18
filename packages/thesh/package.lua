return {
  name    = "thesh",
  version = "0.2.3",
  summary = "Custom standalone POSIX shell for Haliade OS (default shell, replaces bash)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/thesh/thesh-0.2.3.tar.gz",
  sha256  = "ac70779b50a763c7d379ed9e4752fc821441abcff99e43235eb2f17a81f302d3",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/thesh && ! test -f " .. p.install_root .. "/etc/theshrc")
  end,
}