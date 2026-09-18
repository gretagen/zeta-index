return {
  name = "xorgproto",
  version = "2025.1",
  summary = "Combined X.Org protocol headers (build-time dependency)",
  url = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/xorgproto/xorgproto-2025.1.tar.gz",
  sha256 = "90dbe0b47f5721633257e5afd02e642f1afb8f93d3a1fb383e07ed01baef2a31",
  deps = {},
  archive = { strip = 1 },
  test = function(p)
    p:run("test -f '" .. p.install_root .. "'/usr/include/X11/extensions/randr.h")
  end,
}
