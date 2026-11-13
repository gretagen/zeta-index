return {
  name    = "mbedtls",
  version = "3.6.7",
  summary = "Mbed TLS: crypto and SSL/TLS library (shared)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/mbedtls/mbedtls-3.6.7.tar.gz",
  sha256  = "df2c64599beb72a17dab1f4c8b6b8ea2595ad36dfaa223b8a47a0b72207e23c8",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -n \"$(find " .. p.install_root .. "/usr/lib -name 'libmbedtls.so*')\" && test -n \"$(find " .. p.install_root .. "/usr/lib -name 'libmbedcrypto.so*')\" && test -f " .. p.install_root .. "/usr/include/mbedtls/ssl.h && test -f " .. p.install_root .. "/usr/lib/pkgconfig/mbedtls.pc")
  end,
}
