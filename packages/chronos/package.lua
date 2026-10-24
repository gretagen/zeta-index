return {
  name    = "chronos",
  version = "1.9.4",
  summary = "btrfs generation manager for Haliade system (Limine boot entries)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/chronos/chronos-1.9.4.tar.gz",
  sha256  = "4b2b8b2cefea8bc91ef305a728903db6cdbe1e6f2d8fd1a5460659b22e3b1aba",
  deps    = { "bash", "btrfs-progs", "util-linux" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/chronos")
  end,
}
