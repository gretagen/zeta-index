return {
  name    = "chronos",
  version = "1.5",
  summary = "btrfs generation manager for Haliade OS (Limine boot entries)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/chronos/chronos-1.5.tar.gz",
  sha256  = "491abac5860f719d43e6d54e41aaf7f3626fff9912e61eec0b5a0ce6a506d57b",
  deps    = { "bash", "btrfs-progs", "util-linux" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/chronos")
  end,
}
