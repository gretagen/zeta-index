return {
  name    = "intel-media-driver",
  version = "26.2.4",
  summary = "Intel Media Driver for VA-API (iHD video decode)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/intel-media-driver/intel-media-driver-26.2.4.tar.gz",
  sha256  = "673b93d5e00d9525c07ce80c56b87bc4b9363e9a37c983123a8f14d80269fda7",
  deps    = { "glibc", "gcc", "libva", "libdrm", "libpciaccess", "intel-gmmlib", "libX11", "libXext", "libXfixes", "libxcb", "wayland" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/dri/iHD_drv_video.so")
  end,
}
