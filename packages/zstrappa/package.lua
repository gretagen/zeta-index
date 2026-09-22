return {
  name    = "zstrappa",
  version = "2.5",
  summary = "Install Haliade OS from the live ISO to a target device",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/zstrappa/zstrappa-2.5.tar.gz",
  sha256  = "43ed047bc78976591872aa938f9d53c1f75c0dc24695eace109133351368bbce",
  deps    = { "bash", "btrfs-progs", "util-linux", "dosfstools", "limine", "rsync", "chronos" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/zstrappa")
  end,
}
