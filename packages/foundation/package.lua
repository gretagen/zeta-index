return {
  name    = "foundation",
  version = "0.1.0",
  summary = "Haliade system deployment tool (tower)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/foundation/foundation-0.1.0.tar.gz",
  sha256  = "8644ce3993620be3fb763e13493a9c5b687c2d3ec6a2b87d55fa60b4aab1cc5c",
  deps    = { "bash", "btrfs-progs", "e2fsprogs", "util-linux", "dosfstools", "limine", "rsync", "chronos", "bubblewrap", "xorriso", "squashfs-tools" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/tower && bash -n " .. p.install_root .. "/usr/bin/tower && " .. p.install_root .. "/usr/bin/tower help | grep -q 'tower place'")
  end,
}
