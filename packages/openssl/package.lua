return {
  name    = "openssl",
  version = "3.6.3",
  summary = "OpenSSL 3 crypto and TLS libraries (libcrypto/libssl)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/openssl/openssl-3.6.3.tar.gz",
  sha256  = "412dd4cec0dddde1cce8077af2a233af3299349e536e649b0f626335e6ba3817",
  deps    = { "glibc", "brotli", "libz", "zstd" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libcrypto.so.3")
  end,
}
