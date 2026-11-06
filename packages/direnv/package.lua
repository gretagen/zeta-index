return {
  name    = "direnv",
  version = "2.38.2",
  summary = "Load and unload environment variables per directory (Go binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/direnv/direnv-2.38.2.tar.gz",
  sha256  = "4881002bcc0875951dbda791e7be07a7070a5e5d3e7f170b8243078e23f1a8a4",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/direnv")
  end,
}
