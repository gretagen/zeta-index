return {
  name    = "cheat",
  version = "5.1.0",
  summary = "Interactive cheatsheets on the command line (Go binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/cheat/cheat-5.1.0.tar.gz",
  sha256  = "e1352b4321480a1a37678b0a0749c4f524e19e0a7d652850d991dd3330193929",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/cheat")
  end,
}
