return {
  name    = "subspace-scripts",
  version = "1.3.0",
  summary = "Haliade OS subspace management scripts",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/subspace-scripts/subspace-scripts-1.3.0.tar.gz",
  sha256  = "09d36b6e815ced46f0ec0b2c99e649243ec4b10631c3a57ce7b77d265118a76e",
  deps    = { "bash", "bubblewrap", "chronos" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/subspace-cli && test -x " .. p.install_root .. "/subspace/subspace-enter && test -x " .. p.install_root .. "/subspace/subspace-sync && test -x " .. p.install_root .. "/usr/bin/merge-arch")
  end,
}
