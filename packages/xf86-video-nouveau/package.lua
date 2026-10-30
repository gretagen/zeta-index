return {
  name    = "xf86-video-nouveau",
  version = "1.0.18-1-x86_64",
  summary = "Xorg nouveau display driver (open NVIDIA)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/xf86-video-nouveau/xf86-video-nouveau-1.0.18-1-x86_64.pkg.tar.zst",
  sha256  = "a602fcee1f6b23bec50b8daa09f485d54ce93c0fe3b4b992fad6e4d130ab9c80",
  deps    = { "glibc", "libdrm", "mesa-full", "systemd-libs" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/xorg/modules/drivers/nouveau_drv.so")
  end,
}
