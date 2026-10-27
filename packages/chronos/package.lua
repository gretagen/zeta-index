return {
  name    = "chronos",
  version = "1.9.5",
  summary = "btrfs generation manager for Haliade system (Limine boot entries)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/chronos/chronos-1.9.5.tar.gz",
  sha256  = "5dc53a3376684419fcc44ffce4968d7bf8e366390cd84c1e8bd50ce3deb5896b",
  deps    = { "bash", "btrfs-progs", "util-linux" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/chronos && bash -n " .. p.install_root .. "/usr/bin/chronos && grep -q 'bootable_modules_kernel' " .. p.install_root .. "/usr/bin/chronos")
  end,
}
