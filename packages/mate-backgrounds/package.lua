return {
  name    = "mate-backgrounds",
  version = "1.28.0",
  summary = "Background images for MATE",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/mate-backgrounds/mate-backgrounds-1.28.0.tar.gz",
  sha256  = "dded8cfc5bab4dee5f80cc82e41e1d678a17e83833ae170db0ef5bba25def9b4",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -n \"$(find " .. p.install_root .. "/usr -mindepth 1 -type f | head -1)\"")
  end,
}
