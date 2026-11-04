return {
  name    = "mbedtls",
  version = "3.6.7",
  summary = "TLS 1.3/1.2 and DTLS library (mbedTLS 3.x)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/mbedtls/mbedtls-3.6.7.tar.gz",
  sha256  = "1e595c33cc6be505ec14c33e63859956ce233f7470769c2f71c61291381728be",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libmbedtls.a && test -f " .. p.install_root .. "/usr/include/mbedtls/ssl.h && ls " .. p.install_root .. "/usr/lib/libmbedcrypto.a | grep -q .")
  end,
}
