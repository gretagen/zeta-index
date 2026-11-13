return {
  name    = "speex",
  version = "1.2.1",
  summary = "Speex speech codec (libspeex)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/speex/speex-1.2.1.tar.gz",
  sha256  = "38a720df3d687b5995cdc7e14c27379c18220d0b74428583a9f113ad4eb22a75",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libspeex.so.1.5.2 && test -f " .. p.install_root .. "/usr/include/speex/speex.h && test -f " .. p.install_root .. "/usr/lib/pkgconfig/speex.pc")
  end,
}
