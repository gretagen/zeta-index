return {
  name    = "libva-intel-driver",
  version = "2.4.1",
  summary = "Intel VA-API driver for i965 (legacy)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libva-intel-driver/libva-intel-driver-2.4.1.tar.gz",
  sha256  = "3baf8b77d13ede1d0a983eec389b30872548fa7b19c82597b6b3700d4e9cdec8",
  deps    = { "glibc", "libva", "libdrm", "wayland", "libX11", "libXext", "libxcb" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/dri/i965_drv_video.so")
  end,
}
