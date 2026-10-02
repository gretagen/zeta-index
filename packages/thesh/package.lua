return {
  name    = "thesh",
  version = "0.4.2",
  summary = "Custom standalone POSIX shell for Haliade OS (default shell, replaces bash)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/thesh/thesh-0.4.2.tar.gz",
  sha256  = "056c41e697a43f999ac251b128476c31db3db9e5c642ef21610699472963c078",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/thesh && ! test -f " .. p.install_root .. "/etc/theshrc")
  end,
}
