return {
  name    = "zeta",
  version = "1.0.50",
  summary = "Zeta package manager for Haliade OS",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/zeta/zeta-1.0.50.tar.zst",
  sha256  = "9927dd6fe9c4d2a1577c514ac64565096a7d2a031e3d976b1f505bd8fab09089",
  deps    = { "lua" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/zeta && test -f " .. p.install_root .. "/usr/lib/zeta/zeta.lua && ! test -f " .. p.install_root .. "/usr/lib/zeta/lib/adopt.lua")
  end,
}
