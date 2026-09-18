return {
  name    = "caja",
  version = "1.28.0",
  summary = "File manager for MATE (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/caja/caja-1.28.0.pkg.tar.zst",
  sha256  = "0e225ea2a658a1d4e663f48f2e8dbfe0a7d974140ee832fe96807c5b220f43a3",
  deps    = { "exempi", "gvfs", "libexif", "libSM", "mate-desktop", "libnotify", "gtk-layer-shell" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/ 2>/dev/null || ls " .. p.install_root .. "/usr/share/ 2>/dev/null")
  end,
}
