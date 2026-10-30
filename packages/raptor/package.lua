return {
  name    = "raptor",
  version = "2.0.16-9-x86_64",
  summary = "a C library that parses RDF/XML/N-Triples into RDF triples",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/raptor/raptor-2.0.16-9-x86_64.pkg.tar.zst",
  sha256  = "3c4ef69bf9e8c3704fa6931a5a07da3fee88241b55c65a06c47697abb97034ae",
  deps    = { "glibc", "libxml2", "libxslt", "curl", "icu" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libraptor2.so.0.0.0")
  end,
}
