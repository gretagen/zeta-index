return {
  name    = "dosfstools",
  version = "4.2",
  summary = "DOS/FAT filesystem tools (mkfs.fat, fsck.fat, fatlabel)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/dosfstools/dosfstools-4.2.tar.gz",
  sha256  = "8a0051d52e67d7370f3305b97a86ea1e31e66366f19b5c1707406d6000b7a65c",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/sbin/mkfs.fat && test -x " .. p.install_root .. "/usr/sbin/fsck.fat")
  end,
}
