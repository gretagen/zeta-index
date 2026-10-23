return {
  name    = "syndication",
  version = "6.13.0",
  summary = "KDE: Syndication Library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/syndication/syndication-6.13.0.tar.gz",
  sha256  = "c506dc91f359c44d549e9e23deae9a763f0d1a7ca4a05c13d507289c48a6676a",
  deps    = { "glibc", "qtbase", "gcc", "kcodecs" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}
