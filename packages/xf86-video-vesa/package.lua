return {
  name    = "xf86-video-vesa",
  version = "2.6.0-3-x86_64",
  summary = "Xorg VESA fallback display driver",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/xf86-video-vesa/xf86-video-vesa-2.6.0-3-x86_64.pkg.tar.zst",
  sha256  = "585fac2ef3da42db2c0aedf5ba0993b9e089001cd80a4785297020f782cd62e6",
  deps    = { "glibc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/xorg/modules/drivers/vesa_drv.so")
  end,
}
