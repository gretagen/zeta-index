return {
  name    = "libstemmer",
  version = "3.1.1-1-x86_64",
  summary = "stemming library supporting several languages",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libstemmer/libstemmer-3.1.1-1-x86_64.pkg.tar.zst",
  sha256  = "d5f9947642735e4f026cf0e382fbec7bb45f3eed3b00b8ba29562cd455746ee8",
  deps    = { "glibc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libstemmer.so.0.0.0")
  end,
}
