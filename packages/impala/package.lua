return {
  name    = "impala",
  version = "0.9.0",
  summary = "TUI for managing wifi on Linux (iwd client)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/impala/impala-0.9.0.tar.gz",
  sha256  = "884cdc40dc2203de0e825dc49c0196a4f39f7448b3c052a9cfe83da91c903c2e",
  arch    = "x86_64",
  deps    = { "iwd", "dbus" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/impala && " .. p.install_root .. "/usr/bin/impala --version | grep -q '0.9.0'")
  end,
}
