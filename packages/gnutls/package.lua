return {
  name    = "gnutls",
  version = "30.42.0",
  summary = "TLS library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/gnutls/gnutls-30.42.0.tar.gz",
  sha256  = "edaabb0744a2026c2958a7ebf61058556d4e6240936679e824a96dd858bc553c",
  deps    = { "glibc", "gmp", "leancrypto", "libidn2", "libtasn1", "libunistring", "nettle", "p11-kit" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libgnutls.so.30")
  end,
}
