return {
  name    = "lib32-libgpg-error",
  version = "1.61",
  summary = "Support library for libgcrypt (32-bit)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/lib32-libgpg-error/lib32-libgpg-error.pkg.tar.zst",
  sha256  = "3897c33504c26add53869eae867f316be28298272ffe4c0cba2ab1296941e7ab",
  deps    = { "lib32-glibc", "libgpg-error", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib32")
  end,
}
