return {
  name    = "subspace-scripts",
  version = "1.5.0",
  summary = "Haliade OS subspace management scripts",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/subspace-scripts/subspace-scripts-1.5.0.tar.gz",
  sha256  = "d678cd767e4f0dae7e77032b3c700229dd428d6d5b09342203053cca8da496e9",
  deps    = { "bash", "bubblewrap", "chronos" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/subspace-cli && test -x " .. p.install_root .. "/usr/bin/merged-packages-update && test -x " .. p.install_root .. "/subspace/subspace-enter && test -x " .. p.install_root .. "/subspace/subspace-sync")
  end,
}