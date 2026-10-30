return {
  name    = "liblrdf",
  version = "0.6.1-5-x86_64",
  summary = "a library for the manipulation of RDF file in LADSPA plugins",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/liblrdf/liblrdf-0.6.1-5-x86_64.pkg.tar.zst",
  sha256  = "27a14c54f7a279091a7d8da14354be2d2854004c12b0d3b69089481b2545f10d",
  deps    = { "raptor" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/liblrdf.so.2.0.0")
  end,
}
