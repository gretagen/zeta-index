return {
  name    = "chronos",
  version = "1.9.1",
  summary = "btrfs generation manager for Haliade OS (Limine boot entries)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/chronos/chronos-1.9.1.tar.gz",
  sha256  = "92d94844285342752020353442bccb3b71b9c093e40b383f41f3f9a9c7f081b2",
  deps    = { "bash", "btrfs-progs", "util-linux" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/chronos")
  end,
}
