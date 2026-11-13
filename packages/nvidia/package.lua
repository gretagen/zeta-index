return {
  name    = "nvidia",
  version = "620.70.06",
  summary = "NVIDIA official driver (meta-package: proprietary DKMS modules + userspace)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/nvidia/nvidia-620.70.06.tar.gz",
  sha256  = "1c208bd3c08206bc2d9d150550fcc29e468031860ce84524ef06aad524ebea5d",
  deps    = { "nvidia-dkms", "nvidia-utils" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/share/nvidia/meta && grep -q '620.70.06' " .. p.install_root .. "/usr/share/nvidia/meta")
  end,
}
