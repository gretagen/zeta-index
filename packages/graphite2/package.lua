return {
  name    = "graphite2",
  version = "1.3.14",
  summary = "Graphite2 font rendering engine",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/graphite2/graphite2-1.3.14.tar.gz",
  sha256  = "98fb167a2e84e4c7f052d7d8d3750e65c6dd47f4a32d37da1453d311b7d6b341",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libgraphite2.so.3")
  end,
}
