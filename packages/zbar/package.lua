return {
  name    = "zbar",
  version = "0.23.95-1-x86_64",
  summary = "application and library for reading bar codes from various sources",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/zbar/zbar-0.23.95-1-x86_64.pkg.tar.zst",
  sha256  = "546bcfb4c523d831ae93bc1674fa5d1d08247d34dae0484bbdf61ecd2d1d51f0",
  deps    = { "dbus", "graphicsmagick", "imagemagick", "libXv", "v4l-utils" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libzbar.so.0.3.0")
  end,
}
