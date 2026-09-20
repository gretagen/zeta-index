return {
  name    = "gupnp-igd",
  version = "1.6.0",
  summary = "Library to handle UPnP IGD port mapping",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/gupnp-igd/gupnp-igd.pkg.tar.zst",
  sha256  = "60efc49d5995fdb13d6ce373e6c394f2f87fc2a9568b40ebaec1496616aa2afd",
  deps    = { },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
