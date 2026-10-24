return {
  name    = "zstrappa",
  version = "2.14",
  summary = "Install HaliadeSYS from the live ISO to a target device",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/zstrappa/zstrappa-2.14.tar.gz",
  sha256  = "230b558c4c401c3a3d2a33dbc9af0b9999e48696396bb6a28fffc1deafb480f7",
  deps    = { "bash", "btrfs-progs", "util-linux", "dosfstools", "limine", "rsync", "chronos" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/zstrappa")
  end,
}
