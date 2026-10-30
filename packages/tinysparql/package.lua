return {
  name    = "tinysparql",
  version = "3.12.0-1-x86_64",
  summary = "low-footprint RDF triple store with SPARQL 1.1 interface",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/tinysparql/tinysparql-3.12.0-1-x86_64.pkg.tar.zst",
  sha256  = "f2f75be63d3d9d76a68275f4d3749cc429c924ccd90203e1ae60c8900d518498",
  deps    = { "avahi", "glib", "glibc", "icu", "libjson-glib", "libgcc", "libsoup3", "libstemmer", "libxml2", "sqlite" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/tinysparql")
  end,
}
