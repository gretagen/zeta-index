return {
  name    = "chronos",
  version = "1.9.8",
  summary = "btrfs generation manager for Haliade system (Limine boot entries)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/chronos/chronos-1.9.8.tar.gz",
  sha256  = "92961073080b5fba20349600fcfe56ea87265cfa55a2354c3f6fcc612f9bd2da",
  deps    = { "bash", "btrfs-progs", "util-linux" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/chronos && bash -n " .. p.install_root .. "/usr/bin/chronos && grep -q bootable_modules_kernel " .. p.install_root .. "/usr/bin/chronos && grep -q cmd_remove_all " .. p.install_root .. "/usr/bin/chronos")
  end,
}
