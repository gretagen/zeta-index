return {
  name    = "mate-desktop",
  version = "1.28.2",
  summary = "Desktop library for MATE (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/mate-desktop/mate-desktop-1.28.2.pkg.tar.zst",
  sha256  = "852002ec660b9322c036eb1a28dd64dd8091dcd9b5f10de6ede32e92672e173b",
  deps    = { "gtk3", "startup-notification", "iso-codes" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/ 2>/dev/null || ls " .. p.install_root .. "/usr/share/ 2>/dev/null")
  end,
}
