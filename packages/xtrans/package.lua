return {
  name = "xtrans",
  version = "1.5.1",
  summary = "X transport library (headers and pkg-config file, build-time dependency)",
  url = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/xtrans/xtrans-1.5.1.tar.gz",
  sha256 = "6fb364f0194bce2ab45aa08b775f7371b02ab7d8bda0109603124e2f2e660faa",
  deps = {},
  archive = { strip = 1 },
  test = function(p)
    p:run("test -f '" .. p.install_root .. "'/usr/share/pkgconfig/xtrans.pc")
  end,
}
