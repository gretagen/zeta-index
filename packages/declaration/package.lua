return {
  name    = "declaration",
  version = "1.5.8",
  summary = "Haliade OS declarative system configuration (haliade-synchronize)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/declaration/declaration-1.5.8.tar.gz",
  sha256  = "b5210e289fe30c9644d2c75558f8c7dc8e43f365ca94f780abe3264220ec335b",
  deps    = { "lua", "chronos" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/haliade-synchronize && test -f " .. p.install_root .. "/usr/lib/declaration/sync.lua && test -d " .. p.install_root .. "/usr/lib/declaration/generators && test -f " .. p.install_root .. "/usr/lib/declaration/iniswap/dinit.sh")
  end,
}
