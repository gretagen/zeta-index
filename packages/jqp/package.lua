return {
  name    = "jqp",
  version = "0.8.0",
  summary = "Interactive jq playground for the terminal (Go binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/jqp/jqp-0.8.0.tar.gz",
  sha256  = "ca8820a3e03b1847d96caf3cdfecccd3c86171069964fba5758c61f9890035f1",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/jqp")
  end,
}
