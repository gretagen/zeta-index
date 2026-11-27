return {
  name    = "opus",
  version = "1.6.1",
  summary = "Opus interactive audio codec",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/opus/opus-1.6.1.tar.gz",
  sha256  = "35c3d0f9d99f29bafc69fac04d98501ddd475697d3165e5b985da37de599379d",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/libopus.so* | grep -q libopus && test -f " .. p.install_root .. "/usr/include/opus/opus.h && test -f " .. p.install_root .. "/usr/lib/pkgconfig/opus.pc && PKG_CONFIG_PATH=" .. p.install_root .. "/usr/lib/pkgconfig pkg-config --modversion opus | grep -q 1.6")
  end,
}
