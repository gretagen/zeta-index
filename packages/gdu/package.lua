return {
  name    = "gdu",
  version = "5.38.0",
  summary = "Fast disk usage analyzer with an interactive console (Go binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/gdu/gdu-5.38.0.tar.gz",
  sha256  = "4af00d2f402d839b81b384a21630f662d06ffb9267649902086384780f06887e",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/gdu")
  end,
}
