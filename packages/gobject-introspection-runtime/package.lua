return {
  name    = "gobject-introspection-runtime",
  version = "1.86.0",
  summary = "Introspection system for GObject-based libraries - runtime",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/gobject-introspection-runtime/gobject-introspection-runtime.pkg.tar.zst",
  sha256  = "68495be23fc8b012e67f6107b415e73b383a99d715d38ab192620a2e380af307",
  deps    = { },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
