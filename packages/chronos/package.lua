return {
  name    = "chronos",
  version = "1.4",
  summary = "btrfs generation manager for Haliade OS (Limine boot entries)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/chronos/chronos-1.4.tar.gz",
  sha256  = "c4daa8c5e3a48c5863c5578819c9a498bf2ba5b129aff595936968307b8f88e8",
  deps    = { "bash", "btrfs-progs", "util-linux" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/chronos")
  end,
}
