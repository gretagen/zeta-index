return {
  name    = "nvidia-cuda-libs",
  version = "620.70.06",
  summary = "NVIDIA CUDA driver libraries (libcuda, nvvm, ptxjit)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/nvidia-cuda-libs/nvidia-cuda-libs-620.70.06.tar.gz",
  sha256  = "1a31688dcc55c8e367fb16f5f25c3bd9445b990306bf89a714e63a671668c5f9",
  deps    = { "glibc", "gcc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libcuda.so.1 && test -f " .. p.install_root .. "/usr/lib/libcuda.so.620.70.06 && test -x " .. p.install_root .. "/usr/bin/nvidia-cuda-mps-server")
  end,
}
