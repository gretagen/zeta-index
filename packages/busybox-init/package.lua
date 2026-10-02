return {
  name    = "busybox-init",
  version = "1.37.0",
  summary = "Busybox boot essentials: PID1 init, ash shell, mdev, and the applets the boot chain needs (nothing else)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/busybox-init/busybox-init-1.37.0.tar.gz",
  sha256  = "3bcf422fafadf51dc09f7fcbc2be40feb95cc679f968a08430533b4dcfbacdb8",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/bin/busybox && test -L " .. p.install_root .. "/bin/sh && test -L " .. p.install_root .. "/sbin/init && test -L " .. p.install_root .. "/sbin/mdev")
    p:run("test -e " .. p.install_root .. "/bin/gzip && test -L " .. p.install_root .. "/usr/sbin/chroot && test -L " .. p.install_root .. "/usr/sbin/killall5")
    -- the rest of the stack must be gone
    p:run("! test -e " .. p.install_root .. "/bin/vi && ! test -e " .. p.install_root .. "/bin/wget && ! test -e " .. p.install_root .. "/sbin/httpd && ! test -e " .. p.install_root .. "/sbin/ip")
  end,
}
