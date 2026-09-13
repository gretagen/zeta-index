return {
  name    = "genzee",
  version = "1.0",
  summary = "btrfs generation manager for Haliade OS (Limine boot entries)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/genzee/genzee-1.0.tar.gz",
  sha256  = "402a64a5abe3c3bd83905e0d4fe37e06a25e3dfbcb59d29dc8c0028dec0811b6",
  deps    = { "bash", "btrfs-progs", "util-linux" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/genzee")
  end,
}
