return {
  name    = "just",
  version = "1.59.0",
  summary = "Command runner for justfiles",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/just/just-1.59.0.tar.gz",
  sha256  = "071d2446777a4bb80b8445e6b2eb1da739847f4c5ad76c64f53ddb4fd7e92085",
  deps    = { "glibc", "gcc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/just && " .. p.install_root .. "/usr/bin/just --version | grep -q 1.59 && printf 'default:\\n\\t@echo just-works\\n' > /tmp/just-smoke.just && " .. p.install_root .. "/usr/bin/just --justfile /tmp/just-smoke.just | grep -q just-works")
  end,
}
