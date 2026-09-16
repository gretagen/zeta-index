return {
  name    = "genzee",
  version = "1.1",
  summary = "btrfs generation manager for Haliade OS (Limine boot entries)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/genzee/genzee-1.1.tar.gz",
  sha256  = "81a18d603b7b41f0e501ed86fcf7aad7c161a7d9f456c19113176994ce90a2d6",
  deps    = { "bash", "btrfs-progs", "util-linux" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/genzee")
  end,
}
