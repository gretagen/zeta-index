return {
  name    = "libgirepository",
  version = "1.86.0",
  summary = "Introspection system for GObject-based libraries - runtime library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libgirepository/libgirepository.pkg.tar.zst",
  sha256  = "edf68340a4aab5c4e5a7a2886512367c7ed6ad2be5e1f07ffc6aff07ebb0a1bf",
  deps    = { "glib2", "libffi", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
