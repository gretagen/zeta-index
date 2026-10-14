return {
  name    = "libglvnd-headers",
  version = "1.7.0",
  summary = "libglvnd development headers (GL/EGL/GLES/KHR + glvnd ABI)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libglvnd-headers/libglvnd-headers-1.7.0.tar.gz",
  sha256  = "6e4e219e9ce2daef4daa19b2e6023973e9c7de489535407e9974a0b89cd9c39f",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/include/glvnd/libglxabi.h && test -f " .. p.install_root .. "/usr/include/GL/glx.h && test -f " .. p.install_root .. "/usr/include/KHR/khrplatform.h && test -f " .. p.install_root .. "/usr/include/GLES3/gl3.h")
  end,
}
