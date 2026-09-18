return {
  name    = "zeta",
  version = "1.0.31",
  summary = "Zeta package manager for Haliade OS",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/zeta/zeta-1.0.31.tar.zst",
  sha256  = "c250b068681ae4fc2172eec23100969a777b89a2fe9b3adb1b82121e65b3c4ea",
  deps    = { "lua" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/zeta && test -f " .. p.install_root .. "/usr/lib/zeta/zeta.lua && ! test -f " .. p.install_root .. "/usr/lib/zeta/lib/adopt.lua")
  end,
}
