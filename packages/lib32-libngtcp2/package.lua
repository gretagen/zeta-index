return {
  name    = "lib32-libngtcp2",
  version = "1.25.0",
  summary = "Implementation of IETF QUIC protocol (32-bit)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/lib32-libngtcp2/lib32-libngtcp2.pkg.tar.zst",
  sha256  = "38c7489271b1f0936e9db3349cbb3d4d8bb4dfe0a4f4affee3b0e5793a72191e",
  deps    = { "lib32-glibc", "lib32-gnutls", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib32")
  end,
}
