return {
  name    = "nv-codec-headers",
  version = "13.1.15.0",
  summary = "NVIDIA video codec API headers (FFnvcodec) for obs-nvenc",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/nv-codec-headers/nv-codec-headers-13.1.15.0.tar.gz",
  sha256  = "9ec1f50e98fef108a1690d33877f8d62f4a6a4f38400a4979e23e259b08bc39e",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/pkgconfig/ffnvcodec.pc && test -n \"$(find " .. p.install_root .. "/usr/include -name nvEncodeAPI.h)\"")
  end,
}
