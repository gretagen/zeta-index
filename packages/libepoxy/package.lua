return {
  name    = "libepoxy",
  version = "1.5.10-2",
  summary = "OpenGL/EGL function pointer resolution library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libepoxy/libepoxy-1.5.10-2.tar.gz",
  sha256  = "770c456fec96e91c1c4b8a6a92ed3bed536eed56cdd9f38915c39a99ad3855d9",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/include/epoxy/egl.h && test -f " .. p.install_root .. "/usr/lib/pkgconfig/epoxy.pc -o -f " .. p.install_root .. "/usr/lib64/pkgconfig/epoxy.pc")
  end,
}
