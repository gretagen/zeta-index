return {
  name    = "lxqt-notificationd",
  version = "2.1.0",
  summary = "LXQt component (lxqt-notificationd)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/lxqt-notificationd/lxqt-notificationd-2.1.0.tar.gz",
  sha256  = "026f8d968e462c57c55f40a1d6430f98d5932a1fefd1ab859942697fc911872e",
  deps    = { "glibc", "kwindowsystem", "layer-shell-qt", "liblxqt", "libqtxdg", "qtbase", "qtsvg" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/lxqt-notificationd")
  end,
}
