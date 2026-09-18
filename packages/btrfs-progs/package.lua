return {
  name    = "btrfs-progs",
  version = "7.1",
  summary = "Btrfs filesystem utilities (mkfs.btrfs, btrfs, btrfsck, btrfstune)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/btrfs-progs/btrfs-progs-7.1.tar.gz",
  sha256  = "253137e82db81708f5e144eb42357fe8a3c86152d2daa4ad0e0b017d2c5eaa1c",
  deps    = { "glibc", "systemd-libs", "zstd", "lzo" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/btrfs && test -x " .. p.install_root .. "/usr/bin/mkfs.btrfs")
  end,
}
