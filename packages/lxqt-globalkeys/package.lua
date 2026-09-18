return {
  name    = "lxqt-globalkeys",
  version = "2.1.0",
  summary = "LXQt component (lxqt-globalkeys)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/lxqt-globalkeys/lxqt-globalkeys-2.1.0.tar.gz",
  sha256  = "5af20be38a695c5f7ff09267fb72b97b6f8cb55abd2a2b8c9289e76f6d3475b8",
  deps    = { "glibc", "kwindowsystem", "libICE", "libSM", "libXext", "liblxqt", "libqtxdg", "qtbase", "qtsvg" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -d " .. p.install_root .. "/usr/share/applications || test -d " .. p.install_root .. "/usr/bin")
  end,
}
