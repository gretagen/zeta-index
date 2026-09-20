return {
  name    = "lib32-libgcrypt",
  version = "1.12.4",
  summary = "General purpose cryptographic library based on the code from GnuPG (32-bit)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/lib32-libgcrypt/lib32-libgcrypt.pkg.tar.zst",
  sha256  = "0dd59383007e5fe8325766f48f73ca7ce773408661f588b608c7772e44bcd51b",
  deps    = { "lib32-glibc", "libgcrypt", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib32")
  end,
}
