return {
  name    = "xf86-video-ati",
  version = "22.0.0-3-x86_64",
  summary = "Xorg Radeon display driver (older AMD/ATI)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/xf86-video-ati/xf86-video-ati-22.0.0-3-x86_64.pkg.tar.zst",
  sha256  = "75bf36c9b07ca2f7f2bcd5d2d4a52979684a8c29f3f05655f42ecdb15f1eb292",
  deps    = { "glibc", "libdrm", "libpciaccess", "mesa-full", "systemd-libs" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/xorg/modules/drivers/ati_drv.so")
  end,
}
