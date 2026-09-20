return {
  name    = "zeta",
  version = "1.0.37",
  summary = "Zeta package manager for Haliade OS",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/zeta/zeta-1.0.37.tar.zst",
  sha256  = "4cedde94d6f0cf02c0a1ec4f8a59e0c09bd5e7801c4987b5502de268f8673ace",
  deps    = { "lua" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/zeta && test -f " .. p.install_root .. "/usr/lib/zeta/zeta.lua && ! test -f " .. p.install_root .. "/usr/lib/zeta/lib/adopt.lua")
  end,
}
