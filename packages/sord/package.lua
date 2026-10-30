return {
  name    = "sord",
  version = "0.16.22-1-x86_64",
  summary = "a lightweight C library for storing RDF data in memory",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/sord/sord-0.16.22-1-x86_64.pkg.tar.zst",
  sha256  = "2d6a5986fb8904a4ab9a8270e8325003a86480decce6ba10e88971562a0166a8",
  deps    = { "glibc", "pcre2", "serd", "zix" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libsord-0.so.0.16.22")
  end,
}
