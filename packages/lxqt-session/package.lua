return {
  name    = "lxqt-session",
  version = "2.1.1",
  summary = "LXQt component (lxqt-session)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/lxqt-session/lxqt-session-2.1.1.tar.gz",
  sha256  = "7ea9bb68901f83c0144036866b0fa23755be05f31420af3ca02e944dc93a2493",
  deps    = { "glibc", "kwindowsystem", "layer-shell-qt", "libICE", "libSM", "libXext", "liblxqt", "libqtxdg", "procps-ng", "qtbase", "qtsvg" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/lxqt-session")
  end,
}
