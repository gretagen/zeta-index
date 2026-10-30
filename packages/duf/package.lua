return {
  name    = "duf",
  version = "0.9.1",
  summary = "Simple disk usage/free utility (Go binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/duf/duf-0.9.1.tar.gz",
  sha256  = "c7427e7870ef931ea246f12b2d734cc02d538de892396aff6a95f5338c894673",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/duf")
  end,
}
