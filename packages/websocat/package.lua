return {
  name    = "websocat",
  version = "1.14.1",
  summary = "Command-line client for WebSockets (Rust binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/websocat/websocat-1.14.1.tar.gz",
  sha256  = "e73b8ae3c9288a51a2327a6d10535a519a3b439b4e62742bbdfb8ba815833953",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/websocat")
  end,
}
