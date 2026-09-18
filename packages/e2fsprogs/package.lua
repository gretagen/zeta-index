return {
  name    = "e2fsprogs",
  version = "1.47.4",
  summary = "ext2/ext3/ext4 filesystem utilities (mkfs.ext4, e2fsck, tune2fs, resize2fs)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/e2fsprogs/e2fsprogs-1.47.4.tar.gz",
  sha256  = "f667c5d3e9b8db6b33daf15a400d7782d2381ebc0615ae3f9e687ed7b9204d82",
  deps    = { "glibc", "libz" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/sbin/mkfs.ext4 && test -x " .. p.install_root .. "/usr/sbin/e2fsck")
  end,
}
