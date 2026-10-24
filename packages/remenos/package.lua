return {
  name    = "remenos",
  version = "0.1.0",
  summary = "Simon-inspired memory game rendered in big FIGlet ASCII letters",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/remenos/remenos-0.1.0.tar.gz",
  sha256  = "c77d329a4a5450520422c7c79e989c2d6a7d630dc2c307ab890c186fa5d449bb",
  deps    = { "bash", "figlet" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/remenos && test -x " .. p.install_root .. "/usr/share/remenos/game.sh && test -f " .. p.install_root .. "/usr/share/remenos/sfx/tick.wav && test -f " .. p.install_root .. "/usr/share/doc/remenos/read-me.txt && bash -n " .. p.install_root .. "/usr/share/remenos/game.sh && grep -q 'XDG_STATE_HOME' " .. p.install_root .. "/usr/share/remenos/game.sh && grep -q 'SCRIPT_DIR/sfx' " .. p.install_root .. "/usr/share/remenos/game.sh")
  end,
}
