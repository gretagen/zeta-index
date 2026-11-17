return {
  name    = "subspace-scripts",
  version = "1.7.3",
  summary = "Haliade system subspace management scripts",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/subspace-scripts/subspace-scripts-1.7.3.tar.gz",
  sha256  = "d5a6091462e9f154c4400f46302b8f5f94c0e4f92230917c63fb95c06010d80b",
  deps    = { "bash", "bubblewrap", "chronos" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/subspace-cli && test -x " .. p.install_root .. "/subspace/subspace-enter && test -x " .. p.install_root .. "/subspace/subspace-sync && test -x " .. p.install_root .. "/subspace/subspace-run && bash -n " .. p.install_root .. "/usr/bin/subspace-cli && bash -n " .. p.install_root .. "/subspace/subspace-enter && bash -n " .. p.install_root .. "/subspace/subspace-sync && bash -n " .. p.install_root .. "/subspace/subspace-run && ! test -f " .. p.install_root .. "/usr/bin/subspace-merge && ! test -f " .. p.install_root .. "/usr/bin/subspace-unmerge && ! test -f " .. p.install_root .. "/usr/bin/merged-packages-update")
  end,
}
