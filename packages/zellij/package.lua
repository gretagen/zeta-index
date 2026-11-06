return {
  name    = "zellij",
  version = "0.45.1",
  summary = "Terminal workspace and multiplexer (Rust binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/zellij/zellij-0.45.1.tar.gz",
  sha256  = "2f027ebc300945f3b25bb8d3a1980e2dc0c59475919186fe5ff0ac481c95bf7b",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/zellij")
  end,
}
