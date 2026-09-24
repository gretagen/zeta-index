return {
  name    = "house-handlers",
  version = "1.2.0",
  summary = "Haliade OS home/dotfile configuration handlers (house-synchronize)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/house-handlers/house-handlers-1.2.0.tar.gz",
  sha256  = "7dc3015a541dbf2554c189aabb8912b147d64dab10562b9cd411caf57c866bce",
  deps    = { "lua", "chronos" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/house-synchronize && test -f " .. p.install_root .. "/usr/lib/house-handlers/house_sync.lua && test -d " .. p.install_root .. "/usr/lib/house-handlers/house_generators")
  end,
}