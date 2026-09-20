return {
  name    = "lib32-libxcrypt",
  version = "4.5.2",
  summary = "Modern library for one-way hashing of passwords (32-bit)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/lib32-libxcrypt/lib32-libxcrypt.pkg.tar.zst",
  sha256  = "3bae1d5f5a274fcec8e78dbc7edeef6bfebb1e2a4458e3cb7178e1ec7f034729",
  deps    = { "lib32-glibc", "libxcrypt", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib32")
  end,
}
