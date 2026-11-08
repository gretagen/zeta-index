return {
  name    = "xdg-user-dirs",
  version = "0.20",
  summary = "XDG user dirs management tool",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/xdg-user-dirs/xdg-user-dirs-0.20.tar.gz",
  sha256  = "4fde7c1feefd5d2dce9775977c83b8fe2e41131908cdfcfc5c0993b3f30e3211",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/xdg-user-dirs-update && test -x " .. p.install_root .. "/usr/bin/xdg-user-dir && test -f " .. p.install_root .. "/usr/etc/xdg/autostart/xdg-user-dirs.desktop && test -f " .. p.install_root .. "/usr/etc/xdg/user-dirs.conf")
  end,
}
