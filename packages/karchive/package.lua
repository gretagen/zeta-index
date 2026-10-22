return {
  name    = "karchive",
  version = "6.13.0",
  summary = "KDE: Qt addon providing access to numerous types of archives",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/karchive/karchive-6.13.0.tar.gz",
  sha256  = "2e6a0c243e8c73a235bd89b3b853e0426cf080e5ae95731a8510217edbf113c9",
  deps    = { "glibc", "qtbase", "gcc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}
