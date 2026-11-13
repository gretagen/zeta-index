return {
  name    = "speexdsp",
  version = "1.2.1",
  summary = "SpeexDSP: resampler, echo canceller and preprocessor (libspeexdsp)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/speexdsp/speexdsp-1.2.1.tar.gz",
  sha256  = "c820fd300c9f90a91ab53f8d0e9e15e431614cedd7e374d111e14920f7ec87b0",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libspeexdsp.so.1.5.2 && test -f " .. p.install_root .. "/usr/include/speex/speex_preprocess.h && test -f " .. p.install_root .. "/usr/lib/pkgconfig/speexdsp.pc")
  end,
}
