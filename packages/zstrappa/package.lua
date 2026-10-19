return {
  name    = "zstrappa",
  version = "2.12",
  summary = "Install Haliade system from the live ISO to a target device",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/zstrappa/zstrappa-2.12.tar.gz",
  sha256  = "465b2ce613ed9d95582e02b4f2cc3f4759f8acb9df4b272b5095161f35946804",
  deps    = { "bash", "btrfs-progs", "util-linux", "dosfstools", "limine", "rsync", "chronos" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/zstrappa")
  end,
}
