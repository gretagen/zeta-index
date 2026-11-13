return {
  name    = "mbedtls",
  version = "3.6.7",
  summary = "Mbed TLS: crypto and SSL/TLS library (shared)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/mbedtls/mbedtls-3.6.7.tar.gz",
  sha256  = "338c3d26328c0a10103dd467f7425628e4ac0319414984021acc6b4c1930bb35",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -n \"$(find " .. p.install_root .. "/usr/lib -name 'libmbedtls.so*')\" && test -n \"$(find " .. p.install_root .. "/usr/lib -name 'libmbedcrypto.so*')\" && test -f " .. p.install_root .. "/usr/include/mbedtls/ssl.h && test -f " .. p.install_root .. "/usr/lib/pkgconfig/mbedtls.pc")
  end,
}
