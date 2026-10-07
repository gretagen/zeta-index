return {
  name    = "thesh",
  version = "0.5.0",
  summary = "Custom standalone POSIX shell for Haliade OS (default shell, replaces bash)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/thesh/thesh-0.5.0.tar.gz",
  sha256  = "8f192b1a5167980bac1e442ae09520e975d2cc6077d358c03b7e5dcba60c681b",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/thesh && ! test -f " .. p.install_root .. "/etc/theshrc")
  end,
}
