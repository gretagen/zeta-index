return {
  name    = "gojq",
  version = "0.12.19",
  summary = "Pure Go implementation of jq (Go binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/gojq/gojq-0.12.19.tar.gz",
  sha256  = "b2ea7d2c271ceb6493505739343d4f2e79cb00d746c7755f43b73e8494f46f61",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/gojq")
  end,
}
