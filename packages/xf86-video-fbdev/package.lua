return {
  name    = "xf86-video-fbdev",
  version = "0.5.1-1-x86_64",
  summary = "Xorg framebuffer display driver",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/xf86-video-fbdev/xf86-video-fbdev-0.5.1-1-x86_64.pkg.tar.zst",
  sha256  = "939d43613fc628c8f6aabab4eb5ca2de8d18ab1fdbad8a783627c51d0d47dd07",
  deps    = { "glibc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/xorg/modules/drivers/fbdev_drv.so")
  end,
}
