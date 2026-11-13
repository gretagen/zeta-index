return {
  name    = "nvidia-dkms",
  version = "620.70.06",
  summary = "NVIDIA proprietary driver kernel modules (DKMS, all GPUs)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/nvidia-dkms/nvidia-dkms-620.70.06.tar.gz",
  sha256  = "1680856f706dc63aa646b5990f0861e221db67d3cd58f2a80f9bb4bd4bed1d2b",
  deps    = { "dkms", "linux-headers", "gcc-minimal" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/src/nvidia-620.70.06/dkms.conf && grep -q 'PACKAGE_NAME=\"nvidia\"' " .. p.install_root .. "/usr/src/nvidia-620.70.06/dkms.conf && test -f " .. p.install_root .. "/usr/src/nvidia-620.70.06/Makefile && test -f " .. p.install_root .. "/usr/src/nvidia-620.70.06/nvidia/nv.c")
  end,
}
