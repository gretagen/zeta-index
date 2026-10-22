return {
  name    = "kitemviews",
  version = "6.13.0",
  summary = "KDE: KItemViews",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/kitemviews/kitemviews-6.13.0.tar.gz",
  sha256  = "dd381447a67ed8a332722238ca359ab5a190d24603a6ecc9d4a9181834a20e1d",
  deps    = { "glibc", "qtbase", "gcc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}
