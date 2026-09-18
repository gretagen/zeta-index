return {
  name    = "util-linux",
  version = "2.42",
  summary = "Essential Linux system utilities (mount, losetup, fdisk, blkid, agetty, lsblk, etc.)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/util-linux/util-linux-2.42.tar.gz",
  sha256  = "f194bf3167f4ee7f00e289bbfe42f9793b6baeabe225d6bd34655f657e2b8b7b",
  deps    = { "glibc", "systemd-libs", "pam", "libz", "gcc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/mount -a -x " .. p.install_root .. "/usr/sbin/agetty -a -x " .. p.install_root .. "/usr/bin/lsblk")
  end,
}
