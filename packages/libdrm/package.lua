return {
  name    = "libdrm",
  version = "2.4.134-2",
  summary = "Direct Rendering Manager userspace library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libdrm/libdrm-2.4.134-2.tar.gz",
  sha256  = "588b9ff766c0a72c4c87ec7f908c781715db1fe86645bb3f747edc9e725a8e64",
  deps    = { "glibc", "libpciaccess" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libdrm.so.2 && test -e " .. p.install_root .. "/usr/lib/libdrm_amdgpu.so.1 && test -e " .. p.install_root .. "/usr/lib/libdrm_radeon.so.1 && test -e " .. p.install_root .. "/usr/lib/libdrm_intel.so.1 && test -e " .. p.install_root .. "/usr/lib/libdrm_nouveau.so.2 && test -f " .. p.install_root .. "/usr/lib/pkgconfig/libdrm.pc")
  end,
}
