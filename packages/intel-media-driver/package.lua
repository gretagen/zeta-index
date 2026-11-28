return {
  name    = "intel-media-driver",
  version = "26.2.4",
  summary = "Intel Media Driver for VA-API (iHD video decode)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/intel-media-driver/intel-media-driver-26.2.4.tar.gz",
  sha256  = "4f049b360c9990f3b1391233aa390f1951fb803d27548eedeb982c403232e2b0",
  deps    = { "glibc", "gcc", "libva", "libdrm", "libpciaccess", "intel-gmmlib", "libX11", "libXext", "libXfixes", "libxcb", "wayland" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/dri/iHD_drv_video.so")
  end,
}
