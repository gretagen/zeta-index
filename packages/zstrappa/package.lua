return {
  name    = "zstrappa",
  version = "2.9",
  summary = "Install Haliade OS from the live ISO to a target device",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/zstrappa/zstrappa-2.9.tar.gz",
  sha256  = "8f33f9e5c825a1e91cee5fff8733370616defd5b2adca2a6b9824b974f5ad326",
  deps    = { "bash", "btrfs-progs", "util-linux", "dosfstools", "limine", "rsync", "chronos" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/zstrappa")
  end,
}
