return {
  name    = "foundation",
  version = "0.2.4",
  summary = "Haliade system deployment tool (tower)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/foundation/foundation-0.2.4.tar.gz",
  sha256  = "8acdc6730b32fb8f6011db8957ac5c4a065736dc080a5e2eb064c0de691841c8",
  deps    = { "bash", "btrfs-progs", "e2fsprogs", "util-linux", "dosfstools", "limine", "rsync", "chronos", "bubblewrap", "xorriso", "squashfs-tools" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/tower && bash -n " .. p.install_root .. "/usr/bin/tower && " .. p.install_root .. "/usr/bin/tower help | grep -q 'tower place' && " .. p.install_root .. "/usr/bin/tower help | grep -q -- '--shell' && grep -q 'ensure_merge()' " .. p.install_root .. "/usr/bin/tower")
  end,
}
