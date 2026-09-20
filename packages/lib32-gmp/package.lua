return {
  name    = "lib32-gmp",
  version = "6.3.0",
  summary = "A free library for arbitrary precision arithmetic (32-bit)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/lib32-gmp/lib32-gmp.pkg.tar.zst",
  sha256  = "84702af8700358c42232e8e499c71a4c19a06f25a182e3dd8c514e9852ca40db",
  deps    = { "lib32-gcc-libs", "gmp", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib32")
  end,
}
