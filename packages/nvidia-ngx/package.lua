return {
  name    = "nvidia-ngx",
  version = "620.70.06",
  summary = "NVIDIA NGX / DLSS runtime libraries",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/nvidia-ngx/nvidia-ngx-620.70.06.tar.gz",
  sha256  = "ae0fc6ab426386811350d3c5b523b446d2ad78285d84592ec62e764ffecb22d7",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libnvidia-ngx.so.1 && test -f " .. p.install_root .. "/usr/lib/nvidia/wine/nvngx.dll")
  end,
}
