return {
  name    = "kmod",
  version = "34",
  summary = "Linux kernel module management tools (insmod, rmmod, modprobe, lsmod, depmod)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/kmod/kmod-34.tar.gz",
  sha256  = "585e93dbd39ed949c5218702292a05d2df16edcaf7dd9d6544c1598b9be9f1a9",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/kmod && test -L " .. p.install_root .. "/usr/sbin/modprobe")
  end,
}
