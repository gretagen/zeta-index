return {
  name    = "libva",
  version = "2.2300.0-2",
  summary = "Video Acceleration API (VA-API) library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libva/libva-2.2300.0-2.tar.gz",
  sha256  = "74c9faeeaa7f2db110d2973a6b7c543c1d635f86b3425e0a76f331eab919a78c",
  deps    = { "glibc", "libdrm", "wayland", "libX11", "libXext", "libXfixes" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/include/va/va.h && test -f " .. p.install_root .. "/usr/lib/pkgconfig/libva.pc && test -e " .. p.install_root .. "/usr/lib/libva.so.2 && test -e " .. p.install_root .. "/usr/lib/libva-drm.so.2")
  end,
}
