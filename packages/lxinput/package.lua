return {
  name    = "lxinput",
  version = "0.3.6",
  summary = "LXDE keyboard and mouse settings (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/lxinput/lxinput-0.3.6-3-x86_64.pkg.tar.zst",
  sha256  = "c852cf15a031306a32c550358ab90d129f948a74de1dc8051eabeb51194fba48",
  deps    = { "glib", "gtk3", "libX11", "xorg-xmodmap", "xorg-xset" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/lxinput")
  end,
}
