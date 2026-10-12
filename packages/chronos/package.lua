return {
  name    = "chronos",
  version = "1.9",
  summary = "btrfs generation manager for Haliade OS (Limine boot entries)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/chronos/chronos-1.9.tar.gz",
  sha256  = "da64a31021d408c53b9229bdf4eb29c7acc1137781795f4ec429a96f3dc22efb",
  deps    = { "bash", "btrfs-progs", "util-linux" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/chronos")
  end,
}
