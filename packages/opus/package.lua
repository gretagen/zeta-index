return {
  name    = "opus",
  version = "0.11.1",
  summary = "Opus audio codec",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/opus/opus-0.11.1.tar.gz",
  sha256  = "534a654a714378c2856305c04e6c9b19f769e923b7726377e2a6647207a740f6",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libopus.so.0")
  end,
}
