return {
  name    = "thesh",
  version = "0.2.4",
  summary = "Custom standalone POSIX shell for Haliade OS (default shell, replaces bash)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/thesh/thesh-0.2.4.tar.gz",
  sha256  = "4e6776ef1a84ff2a7deb77ab4da16d847a9ad5619e69e3d26476a88ff25864ab",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/thesh && ! test -f " .. p.install_root .. "/etc/theshrc")
  end,
}