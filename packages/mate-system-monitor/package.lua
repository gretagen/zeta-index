return {
  name    = "mate-system-monitor",
  version = "1.28.1",
  summary = "System monitor for MATE (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/mate-system-monitor/mate-system-monitor-1.28.1.pkg.tar.zst",
  sha256  = "5e3a854ad74e767b753feda3797425f40450701c33eacf6f33287b726e3f4726",
  deps    = { "gtkmm3", "libgtop", "libwnck3", "gettext", "polkit" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/ 2>/dev/null || ls " .. p.install_root .. "/usr/share/ 2>/dev/null")
  end,
}
