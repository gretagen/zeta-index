return {
  name    = "foundation",
  version = "0.2.2",
  summary = "Haliade system deployment tool (tower)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/foundation/foundation-0.2.2.tar.gz",
  sha256  = "eab6fa2b78773a01b3bf5d1b627823d983fcff718f6e065d8d2654613d904b78",
  deps    = { "bash", "btrfs-progs", "e2fsprogs", "util-linux", "dosfstools", "limine", "rsync", "chronos", "bubblewrap", "xorriso", "squashfs-tools" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/tower && bash -n " .. p.install_root .. "/usr/bin/tower && " .. p.install_root .. "/usr/bin/tower help | grep -q 'tower place' && " .. p.install_root .. "/usr/bin/tower help | grep -q -- '--shell' && grep -q 'ensure_merge()' " .. p.install_root .. "/usr/bin/tower")
  end,
}
