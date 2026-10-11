return {
  name    = "chronos",
  version = "1.8",
  summary = "btrfs generation manager for Haliade OS (Limine boot entries)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/chronos/chronos-1.8.tar.gz",
  sha256  = "a9a6c77bcb99d9410ac33a08ce553e276984c1a3792c7c25769be176e1be027b",
  deps    = { "bash", "btrfs-progs", "util-linux" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/chronos")
  end,
}
