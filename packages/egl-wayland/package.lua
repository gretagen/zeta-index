return {
  name    = "egl-wayland",
  version = "1.1.24-1-x86_64",
  summary = "eGLStream-based Wayland external platform",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/egl-wayland/egl-wayland-1.1.24-1-x86_64.pkg.tar.zst",
  sha256  = "9d5b5afd7d6563c15903ea69f42dba989c46d2c16343c7990f022b3be9d6b046",
  deps    = { "eglexternalplatform", "glibc", "libdrm", "wayland" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libnvidia-egl-wayland.so.1.1.24")
  end,
}
