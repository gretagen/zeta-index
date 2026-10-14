return {
  name    = "graphene",
  version = "1.10.8-2",
  summary = "Thin layer of math types for graphic libraries (required by GTK4)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/graphene/graphene-1.10.8-2.tar.gz",
  sha256  = "da572007926c38c2ff507657ddae007e8b533f086abdd2377e6c44c970dde209",
  deps    = { "glibc", "glib" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libgraphene-1.0.so.0")
  end,
}
