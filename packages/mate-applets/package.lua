return {
  name    = "mate-applets",
  version = "1.28.1",
  summary = "Panel applets for MATE (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/mate-applets/mate-applets-1.28.1.pkg.tar.zst",
  sha256  = "c49a6a057cd805a4ce39af5d0368b7917abe027896d3f45e8e1c6455e73dbcd4",
  deps    = { "cpupower", "gtksourceview4", "libgtop", "libnotify", "mate-panel", "polkit", "upower", "wireless_tools", "libnl" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/ 2>/dev/null || ls " .. p.install_root .. "/usr/share/ 2>/dev/null")
  end,
}
