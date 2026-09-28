return {
  name    = "zstrappa",
  version = "2.11",
  summary = "Install Haliade OS from the live ISO to a target device",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/zstrappa/zstrappa-2.11.tar.gz",
  sha256  = "e79bc6b3a07f3879f423acc8d8364037522e46d644c589c4aaadd1fc2c393bca",
  deps    = { "bash", "btrfs-progs", "util-linux", "dosfstools", "limine", "rsync", "chronos" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/zstrappa")
  end,
}
