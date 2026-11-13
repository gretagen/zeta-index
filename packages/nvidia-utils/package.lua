return {
  name    = "nvidia-utils",
  version = "620.70.06",
  summary = "NVIDIA driver userspace (vendor GL/EGL/GLES/Vulkan libs, tools, Xorg modules)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/nvidia-utils/nvidia-utils-620.70.06.tar.gz",
  sha256  = "5cfcfd199d4f809729818061267d7823c0d0b0949b3567c35236be06072a1ee0",
  deps    = { "glibc", "egl", "libglvnd", "nvidia-firmware", "vulkan-loader", "nvidia-gpucomp", "nvidia-cuda-libs", "libXext", "openssl", "gcc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/nvidia-smi && test -e " .. p.install_root .. "/usr/lib/libGLX_nvidia.so.0 && test -f " .. p.install_root .. "/usr/share/vulkan/icd.d/nvidia_icd.json && test -f " .. p.install_root .. "/usr/lib/udev/rules.d/60-nvidia.rules && " .. p.install_root .. "/usr/bin/nvidia-smi --help >/dev/null 2>&1")
  end,
}
