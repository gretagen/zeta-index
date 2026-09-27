return {
  name    = "zstrappa",
  version = "2.7",
  summary = "Install Haliade OS from the live ISO to a target device",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/zstrappa/zstrappa-2.7.tar.gz",
  sha256  = "b4eba8207715f39f79280aa7c27d4fc579ca13efff3589c63683e004059a449d",
  deps    = { "bash", "btrfs-progs", "util-linux", "dosfstools", "limine", "rsync", "chronos" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/zstrappa")
  end,
}