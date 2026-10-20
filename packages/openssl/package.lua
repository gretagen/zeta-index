return {
  name    = "openssl",
  version = "3.6.3-2",
  summary = "OpenSSL 3 crypto and TLS libraries (libcrypto/libssl)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/openssl/openssl-3.6.3-2.tar.gz",
  sha256  = "a44b0b03f602f8e8430060ca8fcb241008a8b6d2db944da1a3b5f62a625896c0",
  deps    = { "glibc", "brotli", "libz", "zstd" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libssl.so.3 && test -f " .. p.install_root .. "/usr/lib/libcrypto.so.3 && test -f " .. p.install_root .. "/usr/lib/pkgconfig/openssl.pc && test -f " .. p.install_root .. "/usr/include/openssl/ssl.h && test -x " .. p.install_root .. "/usr/bin/openssl")
  end,
}
