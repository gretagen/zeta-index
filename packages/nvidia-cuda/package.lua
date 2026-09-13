return {
  name    = "nvidia-cuda",
  version = "595.71.05",
  summary = "NVIDIA official driver CUDA/OpenCL runtime (libcuda, libOpenCL, MPS tools)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-providence/refs/heads/main/nvidia-cuda/nvidia-cuda-595.71.05.tar.xz",
  sha256  = "a412ed45da7e6e9ab6c41c7594e17abbdd25cae35e5ed62bc617a595770407d1",
  deps    = { "glibc", "nvidia-utils" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libcuda.so.1 -a -e " .. p.install_root .. "/usr/lib/libOpenCL.so.1")
  end,
}
