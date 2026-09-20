return {
  name    = "libsoxr",
  version = "0.1.3",
  summary = "The SoX Resampler library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libsoxr/libsoxr-0.1.3-5-x86_64.pkg.tar.zst",
  sha256  = "5d23ef0082854b031a4ac5867018969d3008f1d3ccb841872b8cdc12073ef55e",
  deps    = { "glibc", "libgcc", "libgomp", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
