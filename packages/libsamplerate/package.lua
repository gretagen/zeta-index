return {
  name    = "libsamplerate",
  version = "0.2.2",
  summary = "Sample rate converter library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libsamplerate/libsamplerate-0.2.2-3-x86_64.pkg.tar.zst",
  sha256  = "6641b016f15c73f90ee0741f0d14db1ea7ec988a2b8c74c5fce0182239bbbf00",
  deps    = { "glibc", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
