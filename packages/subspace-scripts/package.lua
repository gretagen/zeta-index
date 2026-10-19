return {
  name    = "subspace-scripts",
  version = "1.7.1",
  summary = "Haliade system subspace management scripts",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/subspace-scripts/subspace-scripts-1.7.1.tar.gz",
  sha256  = "9ce3db07e7621e85b4181a466480cfa968d96a201606c201ba8ab761636fd760",
  deps    = { "bash", "bubblewrap", "chronos" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/subspace-cli && test -x " .. p.install_root .. "/usr/bin/merged-packages-update && test -x " .. p.install_root .. "/subspace/subspace-enter && test -x " .. p.install_root .. "/subspace/subspace-sync")
  end,
}
