return {
  name    = "egl",
  version = "1.5-3",
  summary = "EGL interface library (stub pkgconfig for libglvnd EGL)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/egl/egl-1.5-3.tar.gz",
  sha256  = "9ee84d90d8d254e123ad97181572c63b4cfad267ba7a3ded74a6673880d01cd5",
  deps    = { "glibc" },
  archive = { strip = 1 },
  files   = { "usr/include/EGL/egl.h", "usr/include/EGL/eglext.h", "usr/include/EGL/eglplatform.h", "usr/include/GLES2/gl2.h", "usr/include/GLES2/gl2ext.h", "usr/include/GLES2/gl2platform.h", "usr/include/KHR/khrplatform.h", "usr/lib/libEGL.so", "usr/lib/libEGL.so.1", "usr/lib/libEGL.so.1.1.0", "usr/lib/libGLdispatch.so", "usr/lib/libGLdispatch.so.0", "usr/lib/libGLdispatch.so.0.0.0", "usr/lib/libGLESv2.so", "usr/lib/libGLESv2.so.2", "usr/lib/libGLESv2.so.2.1.0", "usr/lib/pkgconfig/egl.pc", "usr/lib/pkgconfig/glesv2.pc" },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/include/KHR/khrplatform.h && test -f " .. p.install_root .. "/usr/include/EGL/eglplatform.h && test -f " .. p.install_root .. "/usr/include/GLES2/gl2.h && test -f " .. p.install_root .. "/usr/lib/pkgconfig/egl.pc && test -f " .. p.install_root .. "/usr/lib/pkgconfig/glesv2.pc && test -e " .. p.install_root .. "/usr/lib/libEGL.so.1")
  end,
}
