return {
  name    = "glow",
  version = "3.0.0",
  summary = "Render markdown on the CLI (Go binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/glow/glow-3.0.0.tar.gz",
  sha256  = "e590cf499cd2f8bbd8760ceb238d7ff36c89d6fa72afff2854571c7f59128ee0",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/glow")
  end,
}
