return {
  name    = "chronos",
  version = "1.9.7",
  summary = "btrfs generation manager for Haliade system (Limine boot entries)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/chronos/chronos-1.9.7.tar.gz",
  sha256  = "3c01ec0654405db68a991300bed71f12f933f90c70ade07e27a32518822b4cbd",
  deps    = { "bash", "btrfs-progs", "util-linux" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/chronos && bash -n " .. p.install_root .. "/usr/bin/chronos && grep -q bootable_modules_kernel " .. p.install_root .. "/usr/bin/chronos && grep -q cmd_remove_all " .. p.install_root .. "/usr/bin/chronos")
  end,
}
