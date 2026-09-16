return {
  name    = "declaration",
  version = "1.0.0",
  summary = "Haliade OS declarative system configuration (haliade-synchronize)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/declaration/declaration-1.0.0.tar.gz",
  sha256  = "760ce4e055835bfbe8d1aae4147be5363227e2795661cfd70fdc48369318b97f",
  deps    = { "lua" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/haliade-synchronize && test -f " .. p.install_root .. "/usr/lib/declaration/sync.lua && test -d " .. p.install_root .. "/usr/lib/declaration/generators")
  end,
}
