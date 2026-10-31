return {
  name    = "dasel",
  version = "3.11.2",
  summary = "Query and modify data structures (Go binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/dasel/dasel-3.11.2.tar.gz",
  sha256  = "e1e89c9bc89eaf52d48db1bcb69a28bedc36f4f42f1350927307023febd7772e",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/dasel")
  end,
}
