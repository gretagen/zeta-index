return {
  name    = "fftw",
  version = "3.3.11",
  summary = "Fastest Fourier Transform in the West",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/fftw/fftw-3.3.11-1-x86_64.pkg.tar.zst",
  sha256  = "4548ce6c2b143c2118adc2a24d37782eadf3215df7f499b57289fae536957a44",
  deps    = { "glibc", "libgomp", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
