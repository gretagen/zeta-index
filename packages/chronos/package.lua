return {
  name    = "chronos",
  version = "1.3",
  summary = "btrfs generation manager for Haliade OS (Limine boot entries)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/chronos/chronos-1.3.tar.gz",
  sha256  = "4d9ffa07b2a1864abea8b004fc4dd37ce027cf397f4dd7ac9f26ef22abe5ae7d",
  deps    = { "bash", "btrfs-progs", "util-linux" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/chronos")
  end,
}
