return {
  name    = "polkit-qt-1",
  version = "0.200.0",
  summary = "Qt6 polkit wrapper library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/polkit-qt-1/polkit-qt-1-0.200.0.tar.gz",
  sha256  = "83f8a4e203de81c6365efa7d802e7b77d0d7feb0bdbd644bf907210bac9e7c42",
  deps    = { "glibc", "qtbase", "polkit" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libpolkit-qt6-core-1.so.1")
  end,
}
