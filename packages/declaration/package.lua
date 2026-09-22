return {
  name    = "declaration",
  version = "1.3.0",
  summary = "Haliade OS declarative system configuration (haliade-synchronize)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/declaration/declaration-1.3.0.tar.gz",
  sha256  = "0f1c1106254af3360aaa029ff53c6c7d96ec4aa02b88b5485c882326e402bdb3",
  deps    = { "lua", "chronos" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/haliade-synchronize && test -f " .. p.install_root .. "/usr/lib/declaration/sync.lua && test -d " .. p.install_root .. "/usr/lib/declaration/generators && test -d " .. p.install_root .. "/usr/lib/declaration/iniswap")
  end,
}
