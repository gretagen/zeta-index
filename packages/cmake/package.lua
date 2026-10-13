return {
  name    = "cmake",
  version = "3.31.6-2",
  summary = "Cross-platform build system generator",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/cmake/cmake-3.31.6-2.tar.gz",
  sha256  = "858ee6c9af4def99c4afcaea2013b1247e665b46e973a6e2af5ebe53335fd5c4",
  deps    = { "glibc", "libz", "fontconfig", "freetype", "libxcb" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/cmake && " .. p.install_root .. "/usr/bin/cmake --version")
  end,
}
