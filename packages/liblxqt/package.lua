return {
  name    = "liblxqt",
  version = "2.1.0",
  summary = "Core LXQt library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/liblxqt/liblxqt-2.1.0.tar.gz",
  sha256  = "b5ba32e5c528dee612db27cd4ec54ff1e393e2bc4aa37111c401bc27cea4836e",
  deps    = { "glibc", "kwindowsystem", "libqtxdg", "libxss", "qtbase", "qtsvg" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/liblxqt.so.2")
  end,
}
