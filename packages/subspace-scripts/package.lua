return {
  name    = "subspace-scripts",
  version = "1.6.0",
  summary = "Haliade OS subspace management scripts",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/subspace-scripts/subspace-scripts-1.6.0.tar.gz",
  sha256  = "25a295f0dd1835bb9e5892340448db52e57060d89d9e3b90621aa18841635272",
  deps    = { "bash", "bubblewrap", "chronos" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/subspace-cli && test -x " .. p.install_root .. "/usr/bin/merged-packages-update && test -x " .. p.install_root .. "/subspace/subspace-enter && test -x " .. p.install_root .. "/subspace/subspace-sync")
  end,
}
