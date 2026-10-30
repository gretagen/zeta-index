return {
  name    = "lazygit",
  version = "0.66.2",
  summary = "Simple terminal UI for git commands (Go binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/lazygit/lazygit-0.66.2.tar.gz",
  sha256  = "3f203837c69ccc5f2631d389a2f7d0649a31ab1e4707a7b580861f1f48b347b0",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/lazygit")
  end,
}
