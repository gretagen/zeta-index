return {
  name    = "nvidia-open",
  version = "620.70.06",
  summary = "NVIDIA open driver kernel modules (DKMS, Turing+ GPUs)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/nvidia-open/nvidia-open-620.70.06.tar.gz",
  sha256  = "64df907525c13c7ebb58a65a8b4206e85c16d2067322c525fab3e1a42cebdf7a",
  deps    = { "dkms", "linux-headers", "gcc-minimal" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/src/nvidia-open-620.70.06/dkms.conf && grep -q 'PACKAGE_NAME=\"nvidia-open\"' " .. p.install_root .. "/usr/src/nvidia-open-620.70.06/dkms.conf && test -f " .. p.install_root .. "/usr/src/nvidia-open-620.70.06/Makefile && test -f " .. p.install_root .. "/usr/src/nvidia-open-620.70.06/nvidia/nv.c")
  end,
}
