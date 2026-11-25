return {
  name    = "foundation",
  version = "0.3.0",
  summary = "Haliade system deployment tool (tower, capture, harness)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/foundation/foundation-0.3.0.tar.gz",
  sha256  = "fc4b16d24343596eb92384b3a76a5636b6f6d31a6ecc1836dd0b4b96e7b5b674",
  deps    = { "bash", "btrfs-progs", "e2fsprogs", "util-linux", "dosfstools", "limine", "rsync", "chronos", "bubblewrap", "xorriso", "squashfs-tools" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/tower && test -x " .. p.install_root .. "/usr/bin/capture && test -x " .. p.install_root .. "/usr/bin/harness && bash -n " .. p.install_root .. "/usr/bin/tower && bash -n " .. p.install_root .. "/usr/bin/capture && bash -n " .. p.install_root .. "/usr/bin/harness && " .. p.install_root .. "/usr/bin/tower help | grep -q 'tower place' && grep -q 'Usage: capture' " .. p.install_root .. "/usr/bin/capture && " .. p.install_root .. "/usr/bin/tower help | grep -q -- '--shell' && grep -q 'ensure_merge()' " .. p.install_root .. "/usr/bin/tower && ! grep -q '^<<<<<<<' " .. p.install_root .. "/usr/bin/tower && ! grep -q 'sysrq-trigger; }' " .. p.install_root .. "/usr/bin/capture")
  end,
}
