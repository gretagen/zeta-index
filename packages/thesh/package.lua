return {
  name    = "thesh",
  version = "0.3.0",
  summary = "Custom standalone POSIX shell for Haliade OS (default shell, replaces bash)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/thesh/thesh-0.3.0.tar.gz",
  sha256  = "91ab896f2ec3e48dc1e10414749fb413e9bc204ea8b33f4d3c242a1856b922ca",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/thesh && ! test -f " .. p.install_root .. "/etc/theshrc")
  end,
}