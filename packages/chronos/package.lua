return {
  name    = "chronos",
  version = "1.9.2",
  summary = "btrfs generation manager for Haliade system (Limine boot entries)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/chronos/chronos-1.9.2.tar.gz",
  sha256  = "1d45b614f7be1cedc5e12b4e437a2c01a532dc3966bccc186e0dccc91cf3b7b7",
  deps    = { "bash", "btrfs-progs", "util-linux" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/chronos")
  end,
}
