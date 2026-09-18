return {
  name    = "zstrappa",
  version = "2.4",
  summary = "Install Haliade OS from the live ISO to a target device",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/zstrappa/zstrappa-2.4.tar.gz",
  sha256  = "12a82a405ab626da5e567cc52ef97eaa2545b0bbc69acfe6bb02e1faabb3dd2b",
  deps    = { "bash", "btrfs-progs", "util-linux", "dosfstools", "limine", "rsync" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/zstrappa")
  end,
}
