return {
  name    = "thesh",
  version = "0.4.4",
  summary = "Custom standalone POSIX shell for Haliade OS (default shell, replaces bash)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/thesh/thesh-0.4.4.tar.gz",
  sha256  = "5911809832a9aa5a8a9c604dc558a306fd06cf6c64775ee7522f6da0ee3f7681",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/thesh && ! test -f " .. p.install_root .. "/etc/theshrc")
  end,
}
