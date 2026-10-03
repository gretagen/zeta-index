return {
  name    = "dosfstools",
  version = "4.2-2",
  summary = "DOS/FAT filesystem tools (mkfs.fat, fsck.fat, fatlabel)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/dosfstools/dosfstools-4.2-2.tar.gz",
  sha256  = "c8f5be3b4f3cca496282584f4fa163559262238f1c2d4091e4b92e2b9650bb29",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/sbin/mkfs.fat && test -x " .. p.install_root .. "/usr/sbin/fsck.fat")
    p:run("test -x " .. p.install_root .. "/usr/sbin/mkfs.vfat && test -x " .. p.install_root .. "/usr/sbin/fsck.vfat && test -x " .. p.install_root .. "/usr/sbin/dosfslabel")
  end,
}
