return {
  name    = "flac",
  version = "11.0.0",
  summary = "FLAC lossless audio codec",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/flac/flac-11.0.0.tar.gz",
  sha256  = "c415786daa71cf0f07342c8f96f5093d4340441f8fa909255e350abd1b8255f6",
  deps    = { "glibc", "libogg" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libFLAC.so.14")
  end,
}
