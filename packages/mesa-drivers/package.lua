return {
  name    = "mesa-drivers",
  version = "26.1.8",
  summary = "Mesa 3D drivers (radeonsi, i915, lavapipe, etc.)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/mesa-drivers/mesa-drivers-26.1.8.tar.gz",
  sha256  = "519746efd339c88764a6eb6395ce37316745e876109ec3c1db48670c232c228b",
  deps    = { "glibc", "llvm-libs", "libglvnd", "libX11", "libxcb", "wayland", "libpciaccess", "libXxf86vm", "libigdgmm" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/dri/radeonsi_dri.so")
    p:run("test -f " .. p.install_root .. "/usr/share/glvnd/egl_vendor.d/50_mesa.json")
  end,
}
