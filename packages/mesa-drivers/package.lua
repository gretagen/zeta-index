return {
  name    = "mesa-drivers",
  version = "26.1.8-3",
  summary = "Mesa 3D drivers (radeonsi, iris, nouveau, lavapipe, etc.)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/mesa-drivers/mesa-drivers-26.1.8-3.tar.xz",
  sha256  = "87a0123e6053db4d6d8f2bda74525ff59f424a2520d44224ffd905c030d0ff5b",
  deps    = { "glibc", "llvm-libs", "egl", "libX11", "libxcb", "wayland", "libdrm", "libpciaccess", "libXxf86vm", "libxshmfence", "systemd-libs", "vulkan-loader", "libdisplay-info", "libelf", "expat", "xcb-util-keysyms", "libzstd", "lm-sensors" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/dri/nouveau_dri.so && test -f " .. p.install_root .. "/usr/share/glvnd/egl_vendor.d/50_mesa.json && test -f " .. p.install_root .. "/usr/share/vulkan/icd.d/radeon_icd.x86_64.json && test -f " .. p.install_root .. "/usr/share/vulkan/icd.d/intel_icd.x86_64.json")
  end,
}
