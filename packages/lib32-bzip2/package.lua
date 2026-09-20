return {
  name    = "lib32-bzip2",
  version = "1.0.8",
  summary = "A high-quality data compression program (32-bit)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/lib32-bzip2/lib32-bzip2.pkg.tar.zst",
  sha256  = "27c19ebb610892343f891e162fbc688e0a1f964060e1a8d0da9366072aad3775",
  deps    = { "bzip2", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib32")
  end,
}
