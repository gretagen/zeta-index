return {
  name    = "genzee",
  version = "1.2",
  summary = "btrfs generation manager for Haliade OS (Limine boot entries)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/genzee/genzee-1.2.tar.gz",
  sha256  = "a08c848643ca96b91bf914a2d864682d067dc50a3f8f6ce9a1da408e638ce8f8",
  deps    = { "bash", "btrfs-progs", "util-linux" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/genzee")
  end,
}
