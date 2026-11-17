return {
  name    = "subspace-scripts",
  version = "1.7.3",
  summary = "Haliade system subspace management scripts",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/subspace-scripts/subspace-scripts-1.7.3.tar.gz",
  sha256  = "6f2abfcca97e7e8ad5012e314063d64e62f1d68fc89481671a4237322855d67a",
  deps    = { "bash", "bubblewrap", "chronos" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/subspace-cli && test -x " .. p.install_root .. "/usr/bin/subspace-enter && test -x " .. p.install_root .. "/usr/bin/subspace-sync && test -x " .. p.install_root .. "/usr/bin/subspace-run && bash -n " .. p.install_root .. "/usr/bin/subspace-cli && bash -n " .. p.install_root .. "/usr/bin/subspace-enter && bash -n " .. p.install_root .. "/usr/bin/subspace-sync && bash -n " .. p.install_root .. "/usr/bin/subspace-run && ! test -d " .. p.install_root .. "/subspace && ! test -f " .. p.install_root .. "/usr/bin/subspace-merge && ! test -f " .. p.install_root .. "/usr/bin/subspace-unmerge && ! test -f " .. p.install_root .. "/usr/bin/merged-packages-update")
  end,
}
