return {
  name    = "foundation",
  version = "0.2.5",
  summary = "Haliade system deployment tool (tower)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/foundation/foundation-0.2.5.tar.gz",
  sha256  = "ae52ae6f26beacae4c590dc353e7e7cdd91fa2e0ea613dbd75d8ab8cd3876ddf",
  deps    = { "bash", "btrfs-progs", "e2fsprogs", "util-linux", "dosfstools", "limine", "rsync", "chronos", "bubblewrap", "xorriso", "squashfs-tools" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/tower && bash -n " .. p.install_root .. "/usr/bin/tower && " .. p.install_root .. "/usr/bin/tower help | grep -q 'tower place' && " .. p.install_root .. "/usr/bin/tower help | grep -q -- '--shell' && grep -q 'ensure_merge()' " .. p.install_root .. "/usr/bin/tower")
  end,
}
