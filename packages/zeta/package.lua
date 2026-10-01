return {
  name    = "zeta",
  version = "1.0.46",
  summary = "Zeta package manager for Haliade OS",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/zeta/zeta-1.0.46.tar.zst",
  sha256  = "08676c46091dfe8cb57eaed0d09f9c8615fe3e6f6687c3887360cf60e11906ab",
  deps    = { "lua" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/zeta && test -f " .. p.install_root .. "/usr/lib/zeta/zeta.lua && ! test -f " .. p.install_root .. "/usr/lib/zeta/lib/adopt.lua")
  end,
}
