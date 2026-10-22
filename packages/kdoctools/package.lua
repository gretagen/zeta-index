return {
  name    = "kdoctools",
  version = "6.13.0",
  summary = "KDE: KDocTools",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/kdoctools/kdoctools-6.13.0.tar.gz",
  sha256  = "3d85f28aac95f4d09830eadc0ac09dce3eeb02467bf552d6cd9c64e05e35e6c7",
  deps    = { "glibc", "qtbase", "gcc", "karchive", "ki18n", "perl-uri", "docbook-xml", "docbook-xsl", "libxslt" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}
