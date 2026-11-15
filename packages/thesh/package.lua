return {
  name    = "thesh",
  version = "1.0.0",
  summary = "Custom standalone POSIX shell for Haliade system (default shell, replaces bash)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/thesh/thesh-1.0.0.tar.gz",
  sha256  = "f18a7e7d7bf24daa2c81d53127950d73b39385743bfb0e48cbc4be6c66750c7c",
  deps    = { "glibc", "libgcc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/thesh && ! test -f " .. p.install_root .. "/etc/theshrc && " .. p.install_root .. "/usr/bin/thesh --version | grep -q '1.0.0' && " .. p.install_root .. "/usr/bin/thesh -c 'echo zeta-thesh-ok' | grep -q 'zeta-thesh-ok'")
  end,
}
