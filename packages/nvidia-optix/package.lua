return {
  name    = "nvidia-optix",
  version = "595.71.05",
  summary = "NVIDIA official driver OptiX runtime (libnvoptix, rtcore)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-providence/refs/heads/main/nvidia-optix/nvidia-optix-595.71.05.tar.xz",
  sha256  = "6382348cf1a3de2458df746a3a2c3af66ee70fc40a16d46cd7c9a7cdaefde96f",
  deps    = { "glibc", "nvidia-utils" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libnvoptix.so.1 -a -f " .. p.install_root .. "/usr/share/nvidia/nvoptix.bin")
  end,
}
