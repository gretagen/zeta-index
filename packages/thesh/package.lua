return {
  name    = "thesh",
  version = "0.4.3",
  summary = "Custom standalone POSIX shell for Haliade OS (default shell, replaces bash)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/thesh/thesh-0.4.3.tar.gz",
  sha256  = "49e1004a14215c14d9e5cefe87ea8cff711ddea620ec1a446afc1516e786bd9f",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/thesh && ! test -f " .. p.install_root .. "/etc/theshrc")
  end,
}
