return {
  name    = "lib32-libxcrypt-compat",
  version = "4.5.2",
  summary = "Modern library for one-way hashing of passwords - legacy API functions (32bit)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/lib32-libxcrypt-compat/lib32-libxcrypt-compat.pkg.tar.zst",
  sha256  = "3bb257499bf03a72046aded454fd11cf5a909e6fb719985cd2a28e53c4138110",
  deps    = { "lib32-libxcrypt", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib32")
  end,
}
