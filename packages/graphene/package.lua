return {
  name    = "graphene",
  version = "1.10.8",
  summary = "Thin layer of math types for graphic libraries (required by GTK4)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/graphene/graphene-1.10.8.tar.gz",
  sha256  = "31de078506859efbc36ddc97b201f1c42a4b29608aca3b12c615cd72c3a35864",
  deps    = { "glibc", "glib" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libgraphene-1.0.so.0")
  end,
}
