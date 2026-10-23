return {
  name    = "libepoxy",
  version = "1.5.10",
  summary = "OpenGL/EGL function pointer resolution library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libepoxy/libepoxy-1.5.10.tar.gz",
  sha256  = "2351516c18c3d87a6ee27cfe230c011149f3d3bcf3e5ccf8ffe3fab8259845ef",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/include/epoxy/egl.h && test -f " .. p.install_root .. "/usr/lib/pkgconfig/epoxy.pc -o -f " .. p.install_root .. "/usr/lib64/pkgconfig/epoxy.pc")
  end,
}
