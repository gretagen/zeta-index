return {
  name    = "lf",
  version = "r42",
  summary = "Terminal file manager (Go binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/lf/lf-r42.tar.gz",
  sha256  = "e89fc2ed748d6c06b56885cdf8543e693c3fac038a55cba0e3a94a8d999c46d4",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/lf")
  end,
}
