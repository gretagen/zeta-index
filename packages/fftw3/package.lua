return {
  name    = "fftw3",
  version = "3.3.11",
  summary = "Fastest Fourier Transform in the West (double precision)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/fftw3/fftw3-3.3.11.tar.gz",
  sha256  = "c56a5aa24f98bab9cb95b41d85105730b171c033cab929397f20e1433e3fea73",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libfftw3.so.3")
  end,
}
