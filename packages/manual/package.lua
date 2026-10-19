return {
  name    = "manual",
  version = "1.0.2",
  summary = "Haliade system manual as a command (manual)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/manual/manual-1.0.2.tar.gz",
  sha256  = "5de5f1e60d56ad2a5d14bd46515af8777c3862a3aac280bde19afdfbe9738504",
  deps    = { "bash", "ncurses", "uutils-coreutils" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/manual && test -f " .. p.install_root .. "/usr/share/manual/cover.txt && test -f " .. p.install_root .. "/usr/share/manual/13-End.txt && test -f " .. p.install_root .. "/usr/share/manual/concepts.txt && " .. p.install_root .. "/usr/bin/manual 2>&1 | grep -q 'interactive terminal'")
  end,
}
