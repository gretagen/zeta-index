return {
  name    = "zeta",
  version = "1.0.28",
  summary = "Zeta package manager for Haliade OS",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/zeta/zeta-1.0.28.tar.zst",
  sha256  = "792cf53bdb8707b9183c4f7bdc0391f4d6e60c40bd903b633c9e73ee1f9a51a7",
  deps    = { "lua" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/zeta && test -f " .. p.install_root .. "/usr/lib/zeta/zeta.lua && ! test -f " .. p.install_root .. "/usr/lib/zeta/lib/adopt.lua")
  end,
}
