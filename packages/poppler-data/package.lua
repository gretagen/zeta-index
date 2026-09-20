return {
  name    = "poppler-data",
  version = "0.4.12",
  summary = "Encoding data for the poppler PDF rendering library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/poppler-data/poppler-data.pkg.tar.zst",
  sha256  = "46d69cf3aca08e7f4edf6fa0ea7003aab50b740898bafb4e76ceb72da705aaf2",
  deps    = { },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
