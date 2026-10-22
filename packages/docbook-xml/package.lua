return {
  name    = "docbook-xml",
  version = "4.5",
  summary = "DocBook 4.5 XML DTDs",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/docbook-xml/docbook-xml-4.5.tar.gz",
  sha256  = "e5fcc5ea169a1f45099c4325e7ba3072544f1ba6b45f4545347cc874d67188ae",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/share/xml/docbook/schema/dtd/4.5/docbookx.dtd")
  end,
}
