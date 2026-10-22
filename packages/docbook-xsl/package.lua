return {
  name    = "docbook-xsl",
  version = "1.79.2",
  summary = "DocBook XSL stylesheets",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/docbook-xsl/docbook-xsl-1.79.2.tar.gz",
  sha256  = "e6e43e91b7ff1c0ea6e77bf19ca23b58301b30a11b66869d4ce04f1ddc91ea9e",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/share/xml/docbook/xsl-stylesheets/lib/lib.xsl && test -f " .. p.install_root .. "/usr/share/xml/docbook/xsl-stylesheets/VERSION")
  end,
}
