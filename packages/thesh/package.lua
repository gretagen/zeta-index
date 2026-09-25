return {
  name    = "thesh",
  version = "0.4.0",
  summary = "Custom standalone POSIX shell for Haliade OS (default shell, replaces bash)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/thesh/thesh-0.4.0.tar.gz",
  sha256  = "bc114f7390f3a908e4ceee050b2b5688ddc122d43e11ae43bd593a1e109da07d",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/thesh && ! test -f " .. p.install_root .. "/etc/theshrc")
  end,
}