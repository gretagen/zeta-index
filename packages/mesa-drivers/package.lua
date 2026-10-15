return {
  name    = "mesa-drivers",
  version = "26.1.8-2",
  summary = "Mesa 3D drivers (radeonsi, iris, nouveau, lavapipe, etc.)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/mesa-drivers/mesa-drivers-26.1.8-2.tar.gz",
  sha256  = "ee8190634d3fe32aa75711501a0ec5b8b3d3af52811ad62fc962d83e92c3d414",
  deps    = { "glibc", "llvm-libs", "egl", "libX11", "libxcb", "wayland", "libdrm", "libpciaccess", "libXxf86vm", "libxshmfence", "systemd-libs", "vulkan-loader", "libdisplay-info", "libelf", "expat", "xcb-util-keysyms", "libzstd", "lm-sensors" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/dri/nouveau_dri.so && test -f " .. p.install_root .. "/usr/share/glvnd/egl_vendor.d/50_mesa.json && test -f " .. p.install_root .. "/usr/share/vulkan/icd.d/radeon_icd.x86_64.json && test -f " .. p.install_root .. "/usr/share/vulkan/icd.d/intel_icd.x86_64.json")
  end,
}
