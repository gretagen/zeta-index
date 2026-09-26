return {
  name    = "subspace-scripts",
  version = "1.4.0",
  summary = "Haliade OS subspace management scripts",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/subspace-scripts/subspace-scripts-1.4.0.tar.gz",
  sha256  = "88a87d653cd1420ddf8836af337e364cc805a623cd78a754af7a6d92ed707df6",
  deps    = { "bash", "bubblewrap", "chronos" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/subspace-cli && test -x " .. p.install_root .. "/usr/bin/merged-packages-update && test -x " .. p.install_root .. "/subspace/subspace-enter && test -x " .. p.install_root .. "/subspace/subspace-sync")
  end,
}