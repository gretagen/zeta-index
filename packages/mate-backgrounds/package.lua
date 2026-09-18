return {
  name    = "mate-backgrounds",
  version = "1.28.0",
  summary = "Background images for MATE (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/mate-backgrounds/mate-backgrounds-1.28.0.pkg.tar.zst",
  sha256  = "0a72a476318e9e998b82a03f6af434a970d6a3e7d96ea70fdcb9ab4f119ddfe1",
  deps    = {},
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/ 2>/dev/null || ls " .. p.install_root .. "/usr/share/ 2>/dev/null")
  end,
}
