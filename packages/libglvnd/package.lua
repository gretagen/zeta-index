return {
  name    = "libglvnd",
  version = "1.7.0",
  summary = "Vendor-neutral GL/GLX/EGL dispatch library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libglvnd/libglvnd-1.7.0.tar.gz",
  sha256  = "cbe928d7064aa2d5bcd9a78d46509ebed252f78d8581e6524bb46d0f7be5aa8e",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libGLX.so.0 -a -e " .. p.install_root .. "/usr/lib/libGLdispatch.so.0 -a -e " .. p.install_root .. "/usr/lib/libGL.so.1")
  end,
}
