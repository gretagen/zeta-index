return {
  name    = "lib32-nettle",
  version = "4.0",
  summary = "A low-level cryptographic library (32-bit)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/lib32-nettle/lib32-nettle.pkg.tar.zst",
  sha256  = "3f596e6686a6b294d4b445bb575689ecc26ca06616d649497d5e5d6674898544",
  deps    = { "lib32-glibc", "lib32-gmp", "nettle", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib32")
  end,
}
