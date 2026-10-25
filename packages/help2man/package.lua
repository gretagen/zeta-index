return {
  name    = "help2man",
  version = "1.49.3",
  summary = "Generate man pages from command --help output (GNU)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/help2man/help2man-1.49.3.tar.gz",
  sha256  = "fd5009178085d4e2f54c59b22c6e478d59a0851dab24b75055ab8a40fe832f86",
  deps    = { "glibc", "perl" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/help2man && " .. p.install_root .. "/usr/bin/help2man --version | grep -q 1.49")
  end,
}
