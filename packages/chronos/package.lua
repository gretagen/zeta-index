return {
  name    = "chronos",
  version = "1.9.3",
  summary = "btrfs generation manager for Haliade system (Limine boot entries)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/chronos/chronos-1.9.3.tar.gz",
  sha256  = "6b9fa6c02b8271af08c56de6207ea96ec2f0c1751dfee9253b67a80ad2398518",
  deps    = { "bash", "btrfs-progs", "util-linux" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/chronos")
  end,
}
