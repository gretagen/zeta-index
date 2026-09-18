return {
  name    = "libblockdev",
  version = "3.5.0-2-x86_64",
  summary = "Block device abstraction library (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libblockdev/libblockdev-3.5.0-2-x86_64.pkg.tar.zst",
  sha256  = "2fd763118bda5eae9d15645aac0ae3482d506d66f471fb59fc6d5c84b4267a91",
  deps    = { "glib", "kmod", "systemd-libs" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/ 2>/dev/null || ls " .. p.install_root .. "/usr/share/ 2>/dev/null")
  end,
}
