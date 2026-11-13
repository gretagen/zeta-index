return {
  name    = "gitui",
  version = "0.28.1",
  summary = "Terminal UI for git (Rust binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/gitui/gitui-0.28.1.tar.gz",
  sha256  = "e132da01ab57676e914441e04920753cf1a4d1ed1c497b70e869c4bf40b5725b",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/gitui")
  end,
}
