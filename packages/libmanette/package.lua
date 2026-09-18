return {
  name    = "libmanette",
  version = "0.2.13-2-x86_64",
  summary = "Gamepad input library (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libmanette/libmanette-0.2.13-2-x86_64.pkg.tar.zst",
  sha256  = "37ff8274c77c8092ee5b30e34e53533157e18ead998670a21fa3ae7d67355932",
  deps    = { "glib", "libevdev", "libgudev" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/ 2>/dev/null || ls " .. p.install_root .. "/usr/share/ 2>/dev/null")
  end,
}
