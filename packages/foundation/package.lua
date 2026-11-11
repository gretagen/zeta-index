return {
  name    = "foundation",
  version = "0.2.0",
  summary = "Haliade system deployment tool (tower)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/foundation/foundation-0.2.0.tar.gz",
  sha256  = "e33a4f238cc2a6e730564bf3146b05bf24cf4850ab929dc5831e8326aa7031db",
  deps    = { "bash", "btrfs-progs", "e2fsprogs", "util-linux", "dosfstools", "limine", "rsync", "chronos", "bubblewrap", "xorriso", "squashfs-tools" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/tower && bash -n " .. p.install_root .. "/usr/bin/tower && " .. p.install_root .. "/usr/bin/tower help | grep -q 'tower place' && " .. p.install_root .. "/usr/bin/tower help | grep -q -- '--shell' && grep -q 'ensure_merge()' " .. p.install_root .. "/usr/bin/tower")
  end,
}
