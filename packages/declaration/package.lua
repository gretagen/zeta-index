return {
  name    = "declaration",
  version = "1.1.0",
  summary = "Haliade OS declarative system configuration (haliade-synchronize)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/declaration/declaration-1.1.0.tar.gz",
  sha256  = "741e9c3435fcdd25925bc9868d5890a9b1451112600812d5260ef3bad1c76b2e",
  deps    = { "lua" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/haliade-synchronize && test -f " .. p.install_root .. "/usr/lib/declaration/sync.lua && test -d " .. p.install_root .. "/usr/lib/declaration/generators")
  end,
}
