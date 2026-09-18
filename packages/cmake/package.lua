return {
  name    = "cmake",
  version = "3.31.6",
  summary = "Cross-platform build system generator",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/cmake/cmake-3.31.6.tar.gz",
  sha256  = "5a1133ff103c71eb5120e2cc3de922733e7d8a26a98ae716397e8676adb367bf",
  deps    = { "glibc", "libz" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/bin/cmake")
  end,
}
