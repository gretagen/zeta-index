return {
  name    = "which",
  version = "2.21",
  summary = "Locate a command in the PATH",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/which/which-2.21.tar.gz",
  sha256  = "2e57a45d9481b88c262b2097186b86432fb573be3a528a961a6097d63de7aa2e",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/which")
  end,
}
