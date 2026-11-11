return {
  name    = "foundation",
  version = "0.2.3",
  summary = "Haliade system deployment tool (tower)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/foundation/foundation-0.2.3.tar.gz",
  sha256  = "7af2cf87765b3ebca3c7f090af8a15a06db7604204b1260050d20105fa257a45",
  deps    = { "bash", "btrfs-progs", "e2fsprogs", "util-linux", "dosfstools", "limine", "rsync", "chronos", "bubblewrap", "xorriso", "squashfs-tools" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/tower && bash -n " .. p.install_root .. "/usr/bin/tower && " .. p.install_root .. "/usr/bin/tower help | grep -q 'tower place' && " .. p.install_root .. "/usr/bin/tower help | grep -q -- '--shell' && grep -q 'ensure_merge()' " .. p.install_root .. "/usr/bin/tower")
  end,
}
