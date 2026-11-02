return {
  name    = "tecla",
  version = "51.0",
  summary = "GNOME keyboard layout viewer (tecla)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/tecla/tecla-51.0.tar.gz",
  sha256  = "58af72d45f7284d25e4979ff866e5e5597d1cf704dc2dde4e02cb9b12c92654e",
  deps    = { "glibc", "glib", "gtk4", "libadwaita" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/tecla")
  end,
}
