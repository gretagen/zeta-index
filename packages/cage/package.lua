return {
  name    = "cage",
  version = "0.3.1-1-x86_64",
  summary = "Kiosk Wayland compositor (single fullscreen app)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/cage/cage-0.3.1-1-x86_64.pkg.tar.zst",
  sha256  = "d8a8a33d864b8aa85b63990ffd1956be20d56df2f50acde1713fd820d60f61a0",
  deps    = { "glibc", "wlroots", "xkbcommon", "wayland" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/cage")
  end,
}
