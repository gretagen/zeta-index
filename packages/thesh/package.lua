return {
  name    = "thesh",
  version = "0.5.1",
  summary = "Custom standalone POSIX shell for Haliade OS (default shell, replaces bash)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/thesh/thesh-0.5.1.tar.gz",
  sha256  = "40f608785b9f64c718561cd6b7da5c8d598a0a85101f6769e5d20003169167f2",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/thesh && ! test -f " .. p.install_root .. "/etc/theshrc")
  end,
}
