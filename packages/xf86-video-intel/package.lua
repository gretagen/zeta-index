return {
  name    = "xf86-video-intel",
  version = "2.99.917",
  summary = "X.Org Intel DDX video driver",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/xf86-video-intel/xf86-video-intel-2.99.917.tar.gz",
  sha256  = "a48747fe49ae057b2fab7a41db5111b2fd7453a5e6608e30c5aec878afa89975",
  deps    = { "glibc", "libdrm", "libpciaccess", "libX11", "libxcb", "pixman", "xorg-server", "xcb-util", "libXvMC", "libXdamage", "libXext", "libXfixes", "libXrender", "libxshmfence", "libXxf86vm" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/xorg/modules/drivers/intel_drv.so")
  end,
}
