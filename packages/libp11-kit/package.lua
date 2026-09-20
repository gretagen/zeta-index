return {
  name    = "libp11-kit",
  version = "0.26.5",
  summary = "Loads and enumerates PKCS#11 modules (library)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libp11-kit/libp11-kit.pkg.tar.zst",
  sha256  = "8ddc055b304a98c2434fa5d25550c94c0bbcdb22388f752e05e619b2ee98027c",
  deps    = { "libffi", "libtasn1", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
