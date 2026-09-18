return {
  name    = "intel-media-driver",
  version = "26.2.4",
  summary = "Intel Media Driver for VA-API (iHD) — hardware video decode/encode for Gen8+",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/intel-media-driver/intel-media-driver-26.2.4.tar.gz",
  sha256  = "a23185fca05c8fa8bdec09ea9ee8a20361163c87035ec978de4e2bb048a55534",
  deps    = { "glibc", "libva", "libdrm", "libpciaccess", "intel-gmmlib", "libX11", "libXext", "libXfixes", "libxcb", "wayland" },
  build   = function(p)
    p:run("cmake -B build -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_BUILD_TYPE=Release -DENABLE_NONFREE_KERNELS=ON -DENABLE_KERNELS=ON")
    p:run("cmake --build build -j" .. "$(nproc)")
    p:run("DESTDIR=" .. p.install_root .. " cmake --install build")
  end,
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/dri/iHD_drv_video.so")
  end,
}
