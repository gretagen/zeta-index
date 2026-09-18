return {
  name    = "gobject-introspection",
  version = "1.86.0",
  summary = "GObject introspection data and tooling",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/gobject-introspection/gobject-introspection-1.86.0.tar.gz",
  sha256  = "ba4764b84b7c7e6f86461b9e885ee875d70e7e368284a3e21aaf30c140eb27ad",
  deps    = { "glibc", "glib", "cairo", "libffi" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/bin/g-ir-scanner")
  end,
}
