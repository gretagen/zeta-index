return {
  name    = "zstrappa",
  version = "2.13",
  summary = "Install HaliadeSYS from the live ISO to a target device",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/zstrappa/zstrappa-2.13.tar.gz",
  sha256  = "12a9a0393c44abed5241eef3544b951d2fb2d63741e9a4b03cad1c29a1627805",
  deps    = { "bash", "btrfs-progs", "util-linux", "dosfstools", "limine", "rsync", "chronos" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/zstrappa")
  end,
}
