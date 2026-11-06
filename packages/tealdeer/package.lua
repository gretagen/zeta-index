return {
  name    = "tealdeer",
  version = "1.9.1",
  summary = "Very fast tldr client (Rust binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/tealdeer/tealdeer-1.9.1.tar.gz",
  sha256  = "4511698206a0479fe15609cf26b09a4f421d8e9a7e26282d200054561d3e3cab",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/tldr")
  end,
}
