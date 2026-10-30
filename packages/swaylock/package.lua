return {
  name    = "swaylock",
  version = "1.8.6-1-x86_64",
  summary = "screen locker for Wayland",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/swaylock/swaylock-1.8.6-1-x86_64.pkg.tar.zst",
  sha256  = "4662cc18b71e2875e1d766c63e68d21a9370abb167c0968970c966d5e6044ad5",
  deps    = { "cairo", "xkbcommon", "pam", "wayland", "gdk-pixbuf" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/swaylock")
  end,
}
