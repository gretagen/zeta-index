return {
  name    = "thesh",
  version = "0.2.0",
  summary = "Custom standalone POSIX shell for Haliade OS (default shell, replaces bash)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/thesh/thesh-0.2.0.tar.gz",
  sha256  = "53d78641fe8892e09dde4af5ad4eb788d784e5d411d8c268261fb0a23b152b6d",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/thesh && test -f " .. p.install_root .. "/etc/theshrc")
  end,
}