return {
  name    = "nvidia-utils",
  version = "610.57.04",
  summary = "NVIDIA driver userspace (vendor GL/EGL/GLES/Vulkan libs, tools, Xorg modules)",
  url     = "https://github.com/gretagen/zeta-providence/releases/download/large-artifacts/nvidia-utils-610.57.04.tar.gz",
  sha256  = "3255501dd8bb53e9143e2da03d07b33144342584905b6aa985100be2e4f7b2b4",
  deps    = { "glibc", "libglvnd", "nvidia-firmware" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/nvidia-smi -a -e " .. p.install_root .. "/usr/lib/libGLX_nvidia.so.0")
  end,
}
