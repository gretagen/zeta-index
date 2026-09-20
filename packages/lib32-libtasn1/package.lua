return {
  name    = "lib32-libtasn1",
  version = "4.21.0",
  summary = "The ASN.1 library used in GNUTLS (32 bit)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/lib32-libtasn1/lib32-libtasn1.pkg.tar.zst",
  sha256  = "51579b4e0daace85d96d4dd7178be3c5566cc7d98bd2c2a8c46adad814ffbfcb",
  deps    = { "lib32-glibc", "libtasn1", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib32")
  end,
}
