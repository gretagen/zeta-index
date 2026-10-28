return {
  name    = "chronos",
  version = "1.9.6",
  summary = "btrfs generation manager for Haliade system (Limine boot entries)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/chronos/chronos-1.9.6.tar.gz",
  sha256  = "98b342892e9f8bfd8a79a865ca405edffda575d10e19a32e4516446cf8d1bf76",
  deps    = { "bash", "btrfs-progs", "util-linux" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/chronos && bash -n " .. p.install_root .. "/usr/bin/chronos && grep -q bootable_modules_kernel " .. p.install_root .. "/usr/bin/chronos && grep -q cmd_remove_all " .. p.install_root .. "/usr/bin/chronos")
  end,
}
