return {
  name    = "navi",
  version = "2.24.0",
  summary = "Interactive cheatsheet tool for the command line (Rust binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/navi/navi-2.24.0.tar.gz",
  sha256  = "8fd2a7ce912a22a8fceeabd9816b0176098437ca8a8260408b19843cb32ee706",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/navi")
  end,
}
