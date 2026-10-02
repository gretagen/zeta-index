return {
  name    = "chronos",
  version = "1.6",
  summary = "btrfs generation manager for Haliade OS (Limine boot entries)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/chronos/chronos-1.6.tar.gz",
  sha256  = "ab6bfded5be80c3bcfd3b504b7ee656336bde5447ecfd4193a195875516e3506",
  deps    = { "bash", "btrfs-progs", "util-linux" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/chronos")
  end,
}
