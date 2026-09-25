return {
  name    = "thesh",
  version = "0.3.1",
  summary = "Custom standalone POSIX shell for Haliade OS (default shell, replaces bash)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/thesh/thesh-0.3.1.tar.gz",
  sha256  = "9bad6f8a24c830762a7fd7875fe9adbae1057acc6f4912a6c1b56c6e2c44055e",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/thesh && ! test -f " .. p.install_root .. "/etc/theshrc")
  end,
}