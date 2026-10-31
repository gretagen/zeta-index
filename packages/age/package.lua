return {
  name    = "age",
  version = "1.3.2",
  summary = "Modern and secure file encryption tool (Go binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/age/age-1.3.2.tar.gz",
  sha256  = "41c23a6aeb0aa57c5fc17283ba1b21326f2cd301cba0f94b72ea3cc443b603cb",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/age")
  end,
}
