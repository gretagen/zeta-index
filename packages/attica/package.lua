return {
  name    = "attica",
  version = "6.13.0",
  summary = "KDE: Attica is a Qt library that implements the Open Collaboration Services API.",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/attica/attica-6.13.0.tar.gz",
  sha256  = "72b79e651183cf560f78c6e90eaa6c9d7ffa3424bc9bbf8becb972e9b5ad75f6",
  deps    = { "glibc", "qtbase", "gcc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}
