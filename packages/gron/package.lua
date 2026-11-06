return {
  name    = "gron",
  version = "0.7.1",
  summary = "Make JSON greppable (Go binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/gron/gron-0.7.1.tar.gz",
  sha256  = "82258e7a3c59bb4cf45ba4dc3bd5dccca7d75d2e8ef19139626792dc348e042e",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/gron")
  end,
}
