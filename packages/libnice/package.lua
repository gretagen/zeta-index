return {
  name    = "libnice",
  version = "0.1.24",
  summary = "Nice: GLib ICE library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libnice/libnice.pkg.tar.zst",
  sha256  = "78883aacdc4e1a0e4eff42cb1bfc9d3746bd3e49d644b0183ac4a1896b8efe2a",
  deps    = { "glib2", "gnutls", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
