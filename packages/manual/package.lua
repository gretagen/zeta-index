return {
  name    = "manual",
  version = "1.0",
  summary = "Haliade OS manual as a command (manual)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/manual/manual-1.0.tar.gz",
  sha256  = "0cf36a020e124bb4ce93b7fe3080e5297f50741f1e32abda2c153eeed32b2c33",
  deps    = { "bash", "ncurses", "uutils-coreutils" },
  archive = { strip = 1 },
  test    = function(p)
    local r = p.install_root
    p:run("test -x " .. r .. "/usr/bin/manual && test -f " .. r .. "/usr/share/manual/cover.txt && test -f " .. r .. "/usr/share/manual/13-End.txt && test -f " .. r .. "/usr/share/manual/concepts.txt")
    -- non-TTY refusal proves the script executes with its real deps; the
    -- pipeline's status is grep's, so p:run sees success
    p:run(r .. "/usr/bin/manual 2>&1 | grep -q 'interactive terminal'")
  end,
}
