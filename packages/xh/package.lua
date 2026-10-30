return {
  name    = "xh",
  version = "0.26.3",
  summary = "Friendly and fast HTTP request tool (Rust binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/xh/xh-0.26.3.tar.gz",
  sha256  = "cd0a7fdcd4f9a4705892c84b796d24776622cda9f92bb7608d89a395e45719b1",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/xh")
  end,
}
