return {
  name    = "subspace-scripts",
  version = "1.7.2",
  summary = "Haliade system subspace management scripts",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/subspace-scripts/subspace-scripts-1.7.2.tar.gz",
  sha256  = "65f25a2b98c58af891585c2da28b70b4cbe68065a74fc677b5009a1c7ee28702",
  deps    = { "bash", "bubblewrap", "chronos" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/subspace-cli && test -x " .. p.install_root .. "/usr/bin/merged-packages-update && test -x " .. p.install_root .. "/usr/bin/subspace-merge && test -x " .. p.install_root .. "/usr/bin/subspace-unmerge && test -x " .. p.install_root .. "/subspace/subspace-enter && test -x " .. p.install_root .. "/subspace/subspace-sync && test -x " .. p.install_root .. "/subspace/subspace-run && bash -n " .. p.install_root .. "/usr/bin/subspace-cli && bash -n " .. p.install_root .. "/subspace/subspace-enter")
  end,
}
