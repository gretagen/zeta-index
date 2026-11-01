return {
  name    = "graphene",
  version = "1.10.8-3",
  summary = "Thin layer of math types for graphic libraries (required by GTK4)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/graphene/graphene-1.10.8-3.tar.gz",
  sha256  = "cd93df4c705d8c62a12f36cbdd57f3eb88c6db2b06df490d67deb4adc6f55187",
  deps    = { "glibc", "glib", "gobject-introspection" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libgraphene-1.0.so.0 && test -f " .. p.install_root .. "/usr/share/gir-1.0/Graphene-1.0.gir && test -f " .. p.install_root .. "/usr/lib/girepository-1.0/Graphene-1.0.typelib")
  end,
}
