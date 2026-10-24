return {
  name    = "remenos",
  version = "0.1.0-2",
  summary = "Simon-inspired memory game rendered in big FIGlet ASCII letters",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/remenos/remenos-0.1.0-2.tar.gz",
  sha256  = "3f826ccb994e3dcee664cba31b3b5894b5686db92c9189b689c9c3ae06d8f6a7",
  deps    = { "bash", "figlet", "espeak-ng" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/remenos && test -x " .. p.install_root .. "/usr/share/remenos/game.sh && test -f " .. p.install_root .. "/usr/share/remenos/sfx/tick.wav && test -f " .. p.install_root .. "/usr/share/doc/remenos/read-me.txt && bash -n " .. p.install_root .. "/usr/share/remenos/game.sh && grep -q 'XDG_STATE_HOME' " .. p.install_root .. "/usr/share/remenos/game.sh && grep -q 'SCRIPT_DIR/sfx' " .. p.install_root .. "/usr/share/remenos/game.sh")
  end,
}
