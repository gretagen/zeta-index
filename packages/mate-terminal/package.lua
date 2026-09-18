return {
  name    = "mate-terminal",
  version = "1.28.1",
  summary = "Terminal emulator for MATE (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/mate-terminal/mate-terminal-1.28.1.pkg.tar.zst",
  sha256  = "06c2e8803672f66dc0de6b217ff2fd30113ea6d52b3f3a78a3d33909788c7588",
  deps    = { "libSM", "gettext", "mate-desktop", "vte3", "perl" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/ 2>/dev/null || ls " .. p.install_root .. "/usr/share/ 2>/dev/null")
  end,
}
