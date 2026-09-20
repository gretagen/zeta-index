return {
  name    = "lib32-zstd",
  version = "1.5.7",
  summary = "Zstandard - Fast real-time compression algorithm (32-bit)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/lib32-zstd/lib32-zstd.pkg.tar.zst",
  sha256  = "5854c3d9e475b431f13e9e813001e47a478ac9d941ea1acf072fe7d9f3d3c358",
  deps    = { "zstd", "lib32-glibc", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib32")
  end,
}
