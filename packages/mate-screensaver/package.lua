return {
  name    = "mate-screensaver",
  version = "1.28.0",
  summary = "Screen saver for MATE (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/mate-screensaver/mate-screensaver-1.28.0.pkg.tar.zst",
  sha256  = "c3142d3c8dd932c0ea0185ff7a07cb9d71a5add4c1aa75636771c168b89cd762",
  deps    = { "mate-panel", "libmatekbd", "gettext", "libnotify", "mate-desktop", "mate-menus", "mate-session-manager" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/ 2>/dev/null || ls " .. p.install_root .. "/usr/share/ 2>/dev/null")
  end,
}
