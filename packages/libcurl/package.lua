return {
  name    = "libcurl",
  version = "8.21.0",
  summary = "URL transfer library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libcurl/libcurl-8.21.0.tar.gz",
  sha256  = "0e55a6804b10d97a2ed55d3e9e2319be82df07f4f77829459cff4dfb0165d4af",
  deps    = { "glibc", "nghttp2", "openssl", "libz", "zstd" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libcurl.so.4")
  end,
}
