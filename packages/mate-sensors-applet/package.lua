return {
  name    = "mate-sensors-applet",
  version = "1.28.0",
  summary = "Sensors applet for MATE (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/mate-sensors-applet/mate-sensors-applet-1.28.0.pkg.tar.zst",
  sha256  = "567c3a867afd6d50466e0d33a936da907803cbb7b3c0e3e5fa7cf15eacde4518",
  deps    = { "udisks2", "libnotify", "lm-sensors", "mate-panel", "gettext" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/ 2>/dev/null || ls " .. p.install_root .. "/usr/share/ 2>/dev/null")
  end,
}
