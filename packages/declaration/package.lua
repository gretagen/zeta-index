return {
  name    = "declaration",
  version = "1.2.0",
  summary = "Haliade OS declarative system configuration (haliade-synchronize)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/declaration/declaration-1.2.0.tar.gz",
  sha256  = "740e88fe0ac45adfeeff11be2fcec46b66c2dbb1a916c00401373170178a33ff",
  deps    = { "lua", "chronos" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/haliade-synchronize && test -f " .. p.install_root .. "/usr/lib/declaration/sync.lua && test -d " .. p.install_root .. "/usr/lib/declaration/generators")
  end,
}
