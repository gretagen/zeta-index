return {
  name    = "lxqt-runner",
  version = "2.1.0",
  summary = "LXQt component (lxqt-runner)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/lxqt-runner/lxqt-runner-2.1.0.tar.gz",
  sha256  = "b2f0446225761af0d1da9d17873e74a20722eb57075e4ec82b97a21e0fd9ea50",
  deps    = { "glibc", "kwindowsystem", "layer-shell-qt", "liblxqt", "libqtxdg", "lxqt-globalkeys", "muparser", "qtbase", "qtsvg" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/lxqt-runner")
  end,
}
