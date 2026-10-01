return {
  name    = "declaration",
  version = "1.5.6",
  summary = "Haliade OS declarative system configuration (haliade-synchronize)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/declaration/declaration-1.5.6.tar.gz",
  sha256  = "fa4f4d465d5b1f1486ccd4ccf0702f558927264d8ac4ccd0aa6637fd446e9fd7",
  deps    = { "lua", "chronos" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/haliade-synchronize && test -f " .. p.install_root .. "/usr/lib/declaration/sync.lua && test -d " .. p.install_root .. "/usr/lib/declaration/generators && test -f " .. p.install_root .. "/usr/lib/declaration/iniswap/dinit.sh")
  end,
}
