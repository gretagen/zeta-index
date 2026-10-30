return {
  name    = "serd",
  version = "0.32.10-1-x86_64",
  summary = "lightweight C library for RDF syntax supporting reading/ writing Turtle and NTriples",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/serd/serd-0.32.10-1-x86_64.pkg.tar.zst",
  sha256  = "7a86b0bca67dd3391016f0ca08382f102a64a860a75af883c6503a62b88f6815",
  deps    = { "glibc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libserd-0.so.0.32.10")
  end,
}
