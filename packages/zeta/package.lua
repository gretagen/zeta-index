return {
  name    = "zeta",
  version = "1.0.29",
  summary = "Zeta package manager for Haliade OS",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/zeta/zeta-1.0.29.tar.zst",
  sha256  = "e2b99cb3a66e25ad19577aa4b1cb88753d1118da24f7c23aa72898a5f0e8def2",
  deps    = { "lua" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/zeta && test -f " .. p.install_root .. "/usr/lib/zeta/zeta.lua && ! test -f " .. p.install_root .. "/usr/lib/zeta/lib/adopt.lua")
  end,
}
