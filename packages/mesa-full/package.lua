return {
  name    = "mesa-full",
  version = "1.0",
  summary = "Complete Mesa graphics stack (OpenGL, EGL, GBM, DRI drivers, VA-API, Vulkan loader)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/mesa-full/mesa-full-1.0.tar.gz",
  sha256  = "430e653843421b02e8d8140cf2ec838d9ca97351be0f9fae5b0fc99b76e7b4c9",
  deps    = {
    -- Core Mesa
    "mesa-drivers",
    -- DRM userspace
    "libdrm",
    -- Vulkan
    "vulkan-loader",
    "vulkan-headers",
    "spirv-tools",
    -- VA-API
    "libva",
    -- GL dispatch
    "libglvnd",
    "egl",
    -- X11 core
    "libX11",
    "libxcb",
    "libXext",
    "libXfixes",
    "pixman",
    "libxshmfence",
    -- Wayland
    "wayland",
    -- Support libs
    "lm-sensors",
    "zstd",
    "libzstd",
    "expat",
    "libz",
  },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -d " .. p.install_root)
  end,
}
