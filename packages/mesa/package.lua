return {
  name    = "mesa",
  version = "1:26.2.3",
  summary = "Open-source OpenGL drivers",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/mesa/mesa.pkg.tar.zst",
  sha256  = "8365cf2f7f8b55619b3deb52112f402e1db6204a48b60447795631955d832e6c",
  deps    = { "expat", "libdrm", "libelf", "libgcc", "libglvnd", "libstdc++", "libX11", "libxcb", "libXext", "libxshmfence", "libXxf86vm", "llvm-libs", "lm_sensors", "spirv-tools", "wayland", "zstd", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
