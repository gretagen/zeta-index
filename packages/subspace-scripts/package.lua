return {
  name    = "subspace-scripts",
  version = "1.7.0",
  summary = "Haliade OS subspace management scripts",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/subspace-scripts/subspace-scripts-1.7.0.tar.gz",
  sha256  = "e4c793c692730778637ad05a45d1002446320cee4bce1ac90f1fe30c94f62b5a",
  deps    = { "bash", "bubblewrap", "chronos" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/subspace-cli && test -x " .. p.install_root .. "/usr/bin/merged-packages-update && test -x " .. p.install_root .. "/subspace/subspace-enter && test -x " .. p.install_root .. "/subspace/subspace-sync")
  end,
}
