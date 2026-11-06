return {
  name    = "scc",
  version = "4.1.0",
  summary = "Fast code counter with complexity calculations (Go binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/scc/scc-4.1.0.tar.gz",
  sha256  = "f6e617e9a310fe69089c1312d4b960a7de663b8aeefe99beae2981b0b8ae47f3",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/scc")
  end,
}
