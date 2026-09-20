return {
  name    = "lib32-brotli",
  version = "1.2.0",
  summary = "Generic-purpose lossless compression algorithm (32-bit)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/lib32-brotli/lib32-brotli.pkg.tar.zst",
  sha256  = "4bbf84d708d5767d6064bc04f54924ecba513c114709f4275f34149afd7d9459",
  deps    = { "brotli", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib32")
  end,
}
