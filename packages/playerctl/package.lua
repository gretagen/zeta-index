return {
  name    = "playerctl",
  version = "2.4.1",
  summary = "MPRIS media player command-line controller",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/playerctl/playerctl-2.4.1.tar.gz",
  sha256  = "0870f0984254c5f0a09b2404c12c47fb0898b339889656f41b29af46e42f1442",
  deps    = { "glibc", "glib" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/playerctl && test -x " .. p.install_root .. "/usr/bin/playerctld && LD_LIBRARY_PATH=" .. p.install_root .. "/usr/lib " .. p.install_root .. "/usr/bin/playerctl --version | grep -q 2.4 && test -f " .. p.install_root .. "/usr/lib/libplayerctl.so.2 && test -f " .. p.install_root .. "/usr/lib/girepository-1.0/Playerctl-2.0.typelib && test -f " .. p.install_root .. "/usr/share/dbus-1/services/org.mpris.MediaPlayer2.playerctld.service")
  end,
}
