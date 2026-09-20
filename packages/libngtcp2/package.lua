return {
  name    = "libngtcp2",
  version = "1.25.0",
  summary = "Implementation of IETF QUIC protocol",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libngtcp2/libngtcp2.pkg.tar.zst",
  sha256  = "e4a728d9f647f3c52a3aedd67c589be5f43e7dd31ebde6867ad535ba29ec9511",
  deps    = { "openssl", "gnutls", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
