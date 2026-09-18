return {
  name    = "subspace-scripts",
  version = "1.1.1",
  summary = "Haliade OS subspace management scripts",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/subspace-scripts/subspace-scripts-1.1.1.tar.gz",
  sha256  = "c62a23047da4c9c0cb9854200e802d324ee07a42bc942b5458234212786cd9cb",
  deps    = { "bash", "bubblewrap" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/subspace-cli && test -x " .. p.install_root .. "/subspace/subspace-enter && test -x " .. p.install_root .. "/subspace/subspace-sync")
  end,
}
