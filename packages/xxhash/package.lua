return {
  name    = "xxhash",
  version = "0.8.3",
  summary = "Extremely fast non-cryptographic hash algorithm",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/xxhash/xxhash-0.8.3.tar.gz",
  sha256  = "063628960c3e3ee18e93f7ac0b60b64c1e4c5d5aef3127f151fe24601e852c9e",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libxxhash.so")
  end,
}
