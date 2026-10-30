return {
  name    = "xf86-video-amdgpu",
  version = "25.0.0-1-x86_64",
  summary = "Xorg AMDGPU display driver",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/xf86-video-amdgpu/xf86-video-amdgpu-25.0.0-1-x86_64.pkg.tar.zst",
  sha256  = "b13611a62c07eac2e89196870c99b94107cd10302b5747dabec085b14f2d789b",
  deps    = { "glibc", "libdrm", "mesa-full", "systemd-libs" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/xorg/modules/drivers/amdgpu_drv.so")
  end,
}
