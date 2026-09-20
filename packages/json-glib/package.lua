return {
  name    = "json-glib",
  version = "1.10.8",
  summary = "JSON library built on GLib",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/json-glib/json-glib.pkg.tar.zst",
  sha256  = "3c2ec1b51d45f7c2d0cee7d28520b0772cc6d01fa09b808536e08dca7dd638eb",
  deps    = { "glib2", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
