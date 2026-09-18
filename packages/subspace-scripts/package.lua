return {
  name    = "subspace-scripts",
  version = "1.2.0",
  summary = "Haliade OS subspace management scripts",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/subspace-scripts/subspace-scripts-1.2.0.tar.gz",
  sha256  = "69d3126ca2d1b9d65ec99ca21a86b8347f4d5c8ef97dbbd6d42f191f35ad8240",
  deps    = { "bash", "bubblewrap" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/subspace-cli && test -x " .. p.install_root .. "/subspace/subspace-enter && test -x " .. p.install_root .. "/subspace/subspace-sync && test -x " .. p.install_root .. "/usr/bin/merge-arch")
  end,
}
