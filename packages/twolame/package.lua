return {
  name    = "twolame",
  version = "0.0.0",
  summary = "MPEG-2 AAC encoder library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/twolame/twolame-0.0.0.tar.gz",
  sha256  = "26788e6bea7b0cc01060e3612847c27bf2208fe0ecfb4ea43cd3346119b182f5",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libtwolame.so.0")
  end,
}
