return {
  name    = "thesh",
  version = "0.2.1",
  summary = "Custom standalone POSIX shell for Haliade OS (default shell, replaces bash)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/thesh/thesh-0.2.1.tar.gz",
  sha256  = "cd5a81946052b3eb1515e6d1ae11a9dad90816ae484da1af209c656fb501f261",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/thesh && test -f " .. p.install_root .. "/etc/theshrc")
  end,
}