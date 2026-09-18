return {
  name    = "make",
  version = "4.4.1",
  summary = "GNU Make — build automation tool",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/make/make-4.4.1.tar.gz",
  sha256  = "5ce8355c4268ce833426276fb62871ccf2e0210037f1fbd31244bc02531fb03b",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run(p.install_root .. "/usr/bin/make --version")
  end,
}
