return {
  name    = "qttools",
  version = "6.8.2",
  summary = "Qt 6 tools (linguist, qdbus, qtpaths)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/qttools/qttools-6.8.2.tar.gz",
  sha256  = "88cdfa66e165527f73f92346e93cf246e4f6781a2683a08901f19d423b37426f",
  deps    = { "glibc", "qtbase" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/lrelease -a -e " .. p.install_root .. "/usr/bin/qdbus")
  end,
}
