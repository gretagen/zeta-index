return {
  name    = "lib32-gnutls",
  version = "3.8.13",
  summary = "A library which provides a secure layer over a reliable transport layer (32-bit)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/lib32-gnutls/lib32-gnutls.pkg.tar.zst",
  sha256  = "551f78f088f2605bba38c6a85fe7d2b047dea8a099f27249dec64fa5d4e3242f",
  deps    = { "gnutls", "lib32-brotli", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib32")
  end,
}
