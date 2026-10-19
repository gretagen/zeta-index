return {
  name    = "manual",
  version = "1.0.1",
  summary = "Haliade system manual as a command (manual)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/manual/manual-1.0.1.tar.gz",
  sha256  = "0577ecff1620cb28698f740e7a57f78b683afc3d1082f8ec7bb0c2ac0a5f5a15",
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
