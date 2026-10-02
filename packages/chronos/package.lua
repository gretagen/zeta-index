return {
  name    = "chronos",
  version = "1.7",
  summary = "btrfs generation manager for Haliade OS (Limine boot entries)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/chronos/chronos-1.7.tar.gz",
  sha256  = "5aaafa287eb6bef336792f82605f029c8b8edfd71c6af52b43efd38b3a523cac",
  deps    = { "bash", "btrfs-progs", "util-linux" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/chronos")
  end,
}
