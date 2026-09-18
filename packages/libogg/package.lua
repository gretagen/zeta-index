return {
  name    = "libogg",
  version = "0.8.6",
  summary = "Ogg bitstream library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libogg/libogg-0.8.6.tar.gz",
  sha256  = "21b193a5d2f0238814220d61d5026d69c767fe97c452b69020eb74da339fffd6",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libogg.so.0")
  end,
}
