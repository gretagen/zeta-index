return {
  name    = "fftw",
  version = "3.3.11-1-x86_64",
  summary = "a library for computing the discrete Fourier transform (DFT)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/fftw/fftw-3.3.11-1-x86_64.pkg.tar.zst",
  sha256  = "4548ce6c2b143c2118adc2a24d37782eadf3215df7f499b57289fae536957a44",
  deps    = { "bash", "glibc", "libgcc", "libgomp", "libquadmath" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libfftw3.so.3.7.11")
  end,
}
