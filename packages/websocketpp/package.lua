return {
  name    = "websocketpp",
  version = "0.8.2",
  summary = "WebSocket++: header-only C++ WebSocket library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/websocketpp/websocketpp-0.8.2.tar.gz",
  sha256  = "430c0d68084671248c491a5b907150f9e7e765b1966b40801170d1a445f71c0c",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/include/websocketpp/client.hpp && test -f " .. p.install_root .. "/usr/include/websocketpp/version.hpp")
  end,
}
