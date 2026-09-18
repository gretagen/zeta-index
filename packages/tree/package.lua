return {
  name    = "tree",
  version = "2.1.1",
  summary = "Display directories as trees",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/tree/tree-2.1.1.tar.gz",
  sha256  = "651d754fa52402607d1b1d2adf5c12caa09cfc7448faba93ce49122017b80f51",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/tree")
  end,
}
