return {
  name    = "mkinitcpio",
  version = "41",
  summary = "Initramfs generation tool",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/mkinitcpio/mkinitcpio-41.tar.gz",
  sha256  = "ec1bbcf247719b58894b5222fe8a1f5fce9c94f545d5e2004e83d66ef673ddd2",
  deps    = { "bash", "busybox", "kmod", "cpio" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/bin/mkinitcpio")
  end,
}
