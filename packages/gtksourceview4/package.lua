return {
  name    = "gtksourceview4",
  version = "4.8.4",
  summary = "GTK3 source code highlighting widget library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/gtksourceview4/gtksourceview4-4.8.4.tar.gz",
  sha256  = "f8a6f5f7db8626c8962bb7e867e079cf6fd4b68f2a5b5ceb57dd889ab60afb18",
  deps    = { "glibc", "gtk3", "glib", "pango" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libgtksourceview-4.so.0")
  end,
}
